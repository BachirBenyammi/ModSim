unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    lbHistorique: TListBox;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    lb_Etat: TLabel;
    Image_Ok: TImage;
    Image_Erreur: TImage;
    Image_Rien: TImage;
    Image_Quest: TImage;
    btnInitialise: TBitBtn;
    btnEau: TBitBtn;
    btnPoudre: TBitBtn;
    btnCourant: TBitBtn;
    Image_OutCafe: TImage;
    Image_Cafe: TImage;
    Image_Eau: TImage;
    Image_Tout: TImage;
    procedure btnInitialiseClick(Sender: TObject);
    procedure btnEauClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

Type
  TEtat = (Attente, IYAEau, IYAPoudre, IYATout, OUTCafe, OUTEau, OUTRien, Erreur);

Const
  _Etat : Array[TEtat] of String = ('Attente !!', 'Il y a d''eau', 'il y a de poudre',
    'Il ya Tout', 'Vous avez du Cafe !!', 'Vous avez de l''eau !!',
    'Vous avez Rien !!', 'Erreur !!');
  Composant_Etat : Array[0..2] of String = ('Eau', 'Poudre', 'Courant');
var
  Etat : TEtat = Attente;

// Transition d'une état à une autre selon le choix
function Transistion(Etat: TEtat; Choix: byte): TEtat;
begin
  case Choix of
    0:
      case Etat of
        Attente:   Etat := IYAEau;
        IYAPoudre: Etat := IYATout;
      else
        Etat := Erreur;
      end;
    1:
      case Etat of
        Attente: Etat := IYAPoudre;
        IYAEau:  Etat := IYATout;
      else
        Etat := Erreur;
      end;
    2:
      case Etat of
        Attente, IYAPoudre: Etat := OUTRien;
        IYAEau:             Etat := OUTEau;
        IYATout:            Etat := OUTCafe;
      else
        Etat := Erreur;
      end;
   end;
   Result := Etat;
end;

// Renvoi l'état courant
function getEtat(Etat: TEtat): String;
begin
  result := _Etat[Etat];
end;

procedure InitialiseImages;
begin
  with Form1 do
    begin
      Image_Erreur.Visible := False;
      Image_Rien.Visible := False;
      Image_Quest.Visible := False;
      Image_Eau.Visible := false;
      Image_Cafe.Visible := false;
      Image_Ok.Visible := false;
      Image_OutCafe.Visible := false;
      Image_Tout.Visible := False;
    end;
end;

// Afficher l'image selon l'état courant
procedure AfficheImage;
begin
 InitialiseImages;
  with Form1 do
    case Etat of
      Attente : Image_Quest.Visible := True;
      IYATout:
        begin
          Image_Quest.Visible := True;
          Image_Tout.Visible := True;
        end;
      IYAEau:
        begin
          Image_Eau.Visible := True;
          Image_Quest.Visible := True;
        end;
      IYAPoudre:
        begin
          Image_Cafe.Visible := True;
          Image_Quest.Visible := True;
        end;
      OUTCafe:
        begin
          Image_Ok.Visible := True;
          Image_OutCafe.Visible := True;
        end;
      OUTEau, OUTRien: Image_Rien.Visible := True;
      Erreur: Image_Erreur.Visible := True;
    end;
end;

// Initialisation
procedure TForm1.btnInitialiseClick(Sender: TObject);
begin
  Etat := Attente;
  lbHistorique.Clear;
  lb_Etat.Caption := getEtat(Etat);
  AfficheImage;
end;

procedure AjoutComposant(Nbr: byte);
begin
  form1.lbHistorique.Items.Add(Composant_Etat[Nbr]);
end;

// Changement d'état
procedure TForm1.btnEauClick(Sender: TObject);
var
  Nbr:byte;
begin
  Nbr := (Sender as TBitBtn).Tag;
  AjoutComposant(Nbr);
  Etat := Transistion(Etat, Nbr);
  lb_Etat.Caption := getEtat(Etat);
  AfficheImage;
end;

end.
