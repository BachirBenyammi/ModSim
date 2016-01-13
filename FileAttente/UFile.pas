unit UFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDLEDCustomLabel, LMDLEDLabel;

type
  TfrmFile = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit_Arrive: TEdit;
    Label2: TLabel;
    Edit_Service: TEdit;
    Edit_ClientFile: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnCalcule: TButton;
    lbLamda: TLMDLEDLabel;
    lbMu: TLMDLEDLabel;
    lbP: TLMDLEDLabel;
    lbLS: TLMDLEDLabel;
    lbPK: TLMDLEDLabel;
    Label8: TLabel;
    Label9: TLabel;
    lbLQ: TLMDLEDLabel;
    Label10: TLabel;
    lbWS: TLMDLEDLabel;
    Label11: TLabel;
    lbWQ: TLMDLEDLabel;
    btnInitialise: TButton;
    Label12: TLabel;
    procedure Calcules;
    procedure btnCalculeClick(Sender: TObject);
    procedure btnInitialiseClick(Sender: TObject);
  end;

var
  frmFile: TfrmFile;

implementation

uses Math;

{$R *.dfm}
var
  Taux_Arrive_Cient, Duree_Moyenne_Service, k: integer;
  lamda, mu, p, pk, pkold, ls, lq, ws, wq: real;

procedure TfrmFile.Calcules;
var
  i:integer;
begin
  lamda := 1/Taux_Arrive_Cient;
  mu := 1/Duree_Moyenne_Service;
  p := lamda / mu;
  pk := 0;
  pkold := 0;
  for i:= 0 to k do
    begin
      pkold := power(p,i)*(1-p);
      pk := pk + pkold;
    end;
  pk := 1 - pk;
  ls := 1 / (1 - p);
  lq := p*p / (1 - p);
  ws := ls / lamda;
  wq := lq / lamda;
end;

procedure TfrmFile.btnCalculeClick(Sender: TObject);
begin
  Taux_Arrive_Cient := StrToInt(Edit_Arrive.Text);
  Duree_Moyenne_Service := StrToInt(Edit_Service.Text);
  k := StrToInt(Edit_ClientFile.Text);
  Calcules;
  lbLamda.Caption := FloatToStr(lamda);
  lbMu.Caption := FloatToStr(mu);
  lbP.Caption := FloatToStr(p);
  lbPK.Caption := FloatToStr(pk);
  lbLs.Caption := FloatToStr(Ls);
  lbLq.Caption := FloatToStr(Lq);
  lbWs.Caption := FloatToStr(Ws);
  lbWq.Caption := FloatToStr(Wq);
end;

procedure TfrmFile.btnInitialiseClick(Sender: TObject);
begin
  lbLamda.Caption := '0';
  lbMu.Caption := '0';
  lbP.Caption := '0';
  lbPK.Caption := '0';
  lbLs.Caption := '0';
  lbLq.Caption := '0';
  lbWs.Caption := '0';
  lbWq.Caption := '0';
end;

end.
