unit UMot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, RxGIF;

type
  TfrmMot = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Edit_Mot: TEdit;
    BitBtn1: TBitBtn;
    lbRemarque: TLabel;
    Image_Ok: TImage;
    Image_Erreur: TImage;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit_MotChange(Sender: TObject);
  end;

var
  frmMot: TfrmMot;

implementation

{$R *.dfm}
Type
  TEtat = (S0, S1, S2, S3, Erreur);
var
  Etat : TEtat;
  chaine :string;
  c : Char;
  Pos: Integer;

procedure AfficheImage;
begin
  case Etat of
    S3:
      begin
        frmMot.Image_Erreur.Visible := False;
        frmMot.Image_Ok.Visible := True;
      end
   else
      begin
        frmMot.Image_Ok.Visible := False;
        frmMot.Image_Erreur.Visible := True;
      end;
  end;
end;

function TestChaine: Boolean;
begin
  repeat
    Inc(Pos);
    c := chaine[Pos];
    Case c of
      'a':
        Case Etat of
          S0: Etat := S1;
          S1: Etat := Erreur;
          S2: Etat := S3;
          S3: Etat := Erreur;
        end;
      'b':
        Case Etat of
          S0: Etat := Erreur;
          S1: Etat := S2;
          S2: Etat := S2;
          S3: Etat := S3;
        end;
      '#':
        Case Etat of
          S0, S1, S2 : Etat := Erreur;
        end;
    else
      Etat := Erreur;
    end;
  until c = '#';
  Result := (Etat = S3)
end;

procedure TfrmMot.BitBtn1Click(Sender: TObject);
begin
  Etat := S0;
  Pos := 0;
  Edit_Mot.Clear;
  lbRemarque.Caption := '';
  Image_Ok.Visible := False;
  Image_Erreur.Visible := False;
  Edit_Mot.SetFocus;
end;

procedure TfrmMot.Edit_MotChange(Sender: TObject);
begin
  Etat := S0;
  Pos := 0;
  chaine := Edit_Mot.Text + '#';
  if TestChaine then
      lbRemarque.Caption := 'Le mot est accepté !!'
  else
      lbRemarque.Caption := 'Le mot n''est pas accepté !!';
  AfficheImage;
end;

end.
