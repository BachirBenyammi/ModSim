unit UConste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConst = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbRemarque: TLabel;
    Image_Ok: TImage;
    Image_Erreur: TImage;
    Label1: TLabel;
    EditConst: TEdit;
    procedure Edit_ConstChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConst: TfrmConst;

implementation

{$R *.dfm}

Type
  TEtat = ({Debut} B, {SignReal} SR, {SignFacteurEchelle} SSF, {SignEchelle} SF,
    {BeforeDecimalPoint} BDP, {AfterDecimalPoint} ADP, {Exponential} E_e,
    Okay, Erreur);   // les états
  TSymbole = (Chiffre, Sign, _Point, Exp, Fin, Autre);  // les ensembles

var
  Etat : TEtat;
  Symbole : TSymbole;
  carac : Char;     // Caractère courant
  Pos: Integer; // Posiiton courante dans la chaine

// Renvoi le symbole correspondent au caractère
function getSymbole(C: char): TSymbole;
begin
      Case c of
        '0'..'9': result := Chiffre;
        '+', '-': result := Sign;
        '.':      result := _Point;
        'e', 'E': result := Exp;
        '#':      result := Fin;
      else
        result := Autre;
      end;
end;

// Renvoi True c'est l'état est okay ou erreur
function EstEtatFinal(Etat: TEtat): Boolean;
begin
  result := (Etat in [Okay, Erreur]);
end;

// Renvoi True c'est la chaine est une constante reelle
function EstConstanteReel(chaine: String): Boolean;
begin
  Etat := B;                        // Etat initial
  Pos := 0;                         // Position initialle
  chaine := chaine + '#';           // ajout du marqeur de fin
  While not EstEtatFinal(Etat) do   // c'est l'état n'est pas final
    begin
      Inc(Pos);
      carac := chaine[Pos];
      Symbole := getSymbole(carac);
      Case Symbole of
        Chiffre:
          Case Etat of
            B, SR, BDP   : Etat := BDP;
            ADP          : Etat := ADP;
            E_e, SSF, SF : Etat := SF;
          end;
        Sign:
          Case Etat of
            B                     : Etat := SR;
            SR, BDP, ADP, SSF, SF : Etat := Erreur;
            E_e                   : Etat := SSF;
          end;
        _Point:
          Case Etat of
            B, SR, ADP, E_e, SSF, SF : Etat := Erreur;
            BDP                      : Etat := ADP;
          end;
        Exp:
          Case Etat of
            B, SR, E_e, SSF, SF : Etat := Erreur;
            BDP, ADP            : Etat := E_e;
          end;
        Fin:
          Case Etat of
            B, SR, E_e, SSF : Etat := Erreur;
            BDP, ADP, SF    : Etat := Okay;
          end;
        Autre: Etat := Erreur;
      end;
    end;
  Result := (Etat = Okay);
end;

procedure AfficheImage;
begin
  case Etat of
    Okay:
      begin
        frmConst.Image_Erreur.Visible := False;
        frmConst.Image_Ok.Visible := True;
      end;
    Erreur:
      begin
        frmConst.Image_Ok.Visible := False;
        frmConst.Image_Erreur.Visible := True;
      end;
  end;
end;

procedure TfrmConst.Edit_ConstChange(Sender: TObject);
begin
  if EstConstanteReel(EditConst.Text) then
      lbRemarque.Caption := 'Constante réelle juste !!'
  else
      lbRemarque.Caption := 'Ce n''est pas une constante réelle  !!';
  AfficheImage;
end;

end.
