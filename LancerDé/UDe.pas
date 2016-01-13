unit UDe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDLEDCustomLabel, LMDLEDLabel, Buttons, Grids, RXDice,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    btnSimule: TButton;
    btnArreter: TBitBtn;
    btnInitialise: TBitBtn;
    GroupBox1: TGroupBox;
    Edit_Precision: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lbIteration: TLMDLEDLabel;
    lbRandom: TLMDLEDLabel;
    Label3: TLabel;
    sgTable: TStringGrid;
    Edit_Compteur: TEdit;
    Label4: TLabel;
    Chart_X: TChart;
    Series1: TBarSeries;
    Chart1: TChart;
    Series2: TBarSeries;
    RxDice1: TRxDice;
    Label11: TLabel;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure btnSimuleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnArreterClick(Sender: TObject);
    procedure InitialiseTable;
    procedure btnInitialiseClick(Sender: TObject);
    procedure Edit_CompteurChange(Sender: TObject);
    procedure Edit_PrecisionChange(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

var
  x : array [1..6] of integer;
  Stop : Boolean;
  Compteur : integer;
  Precision : real;

procedure TForm1.InitialiseTable;
var
  i:integer;
begin
  with sgTable do
    begin
      Cells[0,0] := 'k';
      Cells[1,0] := 'P (x = k)';
      Cells[2,0] := 'P (x <= k)';
      for i:= 1 to 6 do
        begin
          Cells[0,i] := IntToStr(i);
          Cells[1,i] := '0';
          Cells[2,i] := '0';
        end;
    end;
 Edit_Compteur.Text := '100';
 Edit_Precision.Text := '0.01';
 lbIteration.Caption := '0';
 lbRandom.Caption := '0';
 Series1.Clear;
 Series2.Clear;
end;

procedure TForm1.btnSimuleClick(Sender: TObject);
var
  u, cumul: real;
  i,j: integer;
begin
  Precision := StrToFloat(Edit_Precision.Text);
  Compteur := StrToInt(Edit_Compteur.Text);
  for i:= 1 to 6 do x[i] := 0;
  i := 0;
  Stop := False;

    Repeat
      u := random;
      cumul := 0;
      if u <= 1/6 then inc(x[1])
      else if (u > 1/6) AND (u <= 2/6) then inc(x[2])
      else if (u > 2/6) AND (u <= 3/6) then inc(x[3])
      else if (u > 3/6) AND (u <= 4/6) then inc(x[4])
      else if (u > 4/6) AND (u <= 5/6) then inc(x[5])
      else if (u > 5/6) AND (u <= 6/6) then inc(x[6]);
      RxDice1.Value := Round(u*6);
      inc(i);
      lbIteration.Caption := inttostr(i);
      lbRandom.Caption := floattostr(u);
      Series1.Clear;
      Series2.Clear;
      with sgTable do
        for j:= 1 to 6 do
          begin
            Cells[1,j] := FormatFloat('0.00', X[j]/i);
            cumul := cumul + X[j]/i;
            Series1.AddBar(X[j]/i, IntToStr(j), clGreen);
            Series2.AddBar(cumul, IntToStr(j), clGreen);
            Cells[2,j] := FormatFloat('0.00', Cumul);
          end;
      if Stop then Exit;
      Sleep(Compteur);
      Application.ProcessMessages;
    until (ABS(x[1]/i) - 1/6 <= Precision)
    and (ABS(x[2]/i) - 1/6 <= Precision)
    and (ABS(x[3]/i) - 1/6 <= Precision)
    and (ABS(x[4]/i) - 1/6 <= Precision)
    and (ABS(x[5]/i) - 1/6 <= Precision)
    and (ABS(x[6]/i) - 1/6 <= Precision);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Randomize;
  InitialiseTable;
end;

procedure TForm1.btnArreterClick(Sender: TObject);
begin
  Stop := true;
end;

procedure TForm1.btnInitialiseClick(Sender: TObject);
begin
  InitialiseTable;
  Stop := False;
end;

procedure TForm1.Edit_CompteurChange(Sender: TObject);
begin
  Compteur := StrToInt(Edit_Compteur.Text);
end;

procedure TForm1.Edit_PrecisionChange(Sender: TObject);
begin
 Precision := StrToFloat(Edit_Precision.Text);
end;

end.
