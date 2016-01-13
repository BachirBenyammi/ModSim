unit UPI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDLEDCustomLabel, LMDLEDLabel,
  Buttons;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    btnSimule: TButton;
    btnStop: TBitBtn;
    GroupBox1: TGroupBox;
    Edit_PI: TEdit;
    Label1: TLabel;
    Edit_Iteration: TEdit;
    Label2: TLabel;
    Edit_Presecion: TEdit;
    Label3: TLabel;
    Edit_Compteur: TEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    lbPI: TLMDLEDLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbIteration: TLMDLEDLabel;
    lbPrecision: TLMDLEDLabel;
    Label7: TLabel;
    lbPropA: TLMDLEDLabel;
    Label8: TLabel;
    lbPropB: TLMDLEDLabel;
    Label9: TLabel;
    btnInitialise: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure btnSimuleClick(Sender: TObject);
    procedure Initialise;
    procedure Calcul_Pi;
    procedure btnStopClick(Sender: TObject);
    procedure Edit_CompteurChange(Sender: TObject);
    procedure btnInitialiseClick(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  _Pi, precision: real;
  Iteration, Compteur: integer;
  Stop: boolean;

procedure TForm1.Initialise;
begin
  with PaintBox1.Canvas do
    begin
      Pen.Width := 2;
      Brush.Color := clBlack;
      FillRect(Rect (0, 0, 300,300));
      Pen.Color := clgreen;
      MoveTo(100,100);
      Rectangle(Rect (20, 20, 280,280));
      Ellipse(Rect (20, 20, 280,280));
      Pen.Color := clRed;
      MoveTo(0,150);
      LineTo(300,150);
      MoveTo(150,0);
      LineTo(150,300);

      MoveTo(150,75);
      LineTo(215,75);
      MoveTo(215,75);
      LineTo(215,150);

      Font.Color := clWhite;
      TextOut(290, 160, 'R');
      TextOut(160, 2, 'R');
      TextOut(0, 130, '-R');
      TextOut(130, 285, '-R');
      TextOut(135, 135, '0');
      TextOut(135, 75, 'y');
      TextOut(215, 155, 'x');
    end;

  lbPI.Caption := '3.14';
  lbIteration.Caption := '1000';
  lbPrecision.Caption := '0';
  lbPropA.Caption := '0';
  lbPropB.Caption := '0';
end;

procedure TForm1.Calcul_Pi;
var
  i, NA, NB : integer;
  r, s, Pi, q: real;
begin
  //Randomize;
  NA := 0;
  NB := 0;
  Pi := _Pi;
  q := 0;
  i := 0;
  Stop := false;

  while (i <= Iteration) and (ABS(Pi - q) >= precision) do
    begin
      r := random;
      s := random;
      with PaintBox1.Canvas do
        if (r*r + s*s) <= 1 then
          begin
            Inc(NA);
            Pixels[150+Round(r*130), 150-Round(s*130)] := clBlue
          end
        else
          begin
            Inc(NB);
            Pixels[150+Round(r*130), 150-Round(s*130)] := clYellow;
          end;
      q := Pi;
      Pi := 4 * (NA /(NA + NB));
      lbPI.Caption := FloatToStr(Pi);
      lbIteration.Caption := IntToStr(i);
      lbPrecision.Caption := FloatToStr(ABS(Pi - q));
      lbPropA.Caption := FloatToStr(NA/(NA + NB));
      lbPropB.Caption := FloatToStr(NB/(NA + NB));
      Inc(i);
      Sleep(Compteur);
      if Stop then Exit;
      Application.ProcessMessages;
    end;
end;

procedure TForm1.btnSimuleClick(Sender: TObject);
begin
  _Pi := StrToFloat(Edit_PI.Text);
  Iteration := StrToInt(Edit_Iteration.Text);
  precision := StrToFloat(Edit_Presecion.Text);
  Compteur :=  StrToInt(Edit_Compteur.Text);
  Calcul_Pi;
end;

procedure TForm1.btnStopClick(Sender: TObject);
begin
  Stop := true;
end;

procedure TForm1.Edit_CompteurChange(Sender: TObject);
begin
  Compteur :=  StrToInt(Edit_Compteur.Text);
end;

procedure TForm1.btnInitialiseClick(Sender: TObject);
begin
  Stop := true;
  Initialise;
end;

procedure TForm1.FormPaint(Sender: TObject);
begin
  Initialise
end;

end.
