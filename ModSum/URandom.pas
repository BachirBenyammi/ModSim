unit URandom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ExtCtrls;

type
  TfrmRandom = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    spSeed: TSpinEdit;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    seNbr: TSpinEdit;
    Label3: TLabel;
    seRandSeed: TSpinEdit;
    Label1: TLabel;
    lbRandom: TListBox;
    Button2: TButton;
    lbRoundList: TListBox;
    Label4: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    seNbrSeed: TSpinEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  end;

var
  frmRandom: TfrmRandom;

implementation

{$R *.dfm}

function Round(Seed: longword): longword;
const
  multiplier = 134775813;
  nbr = 4294967296;       // MAXWORD + 1;
begin
  result := (multiplier * seed + 1) mod nbr
end;

procedure TfrmRandom.Button1Click(Sender: TObject);
const
  nbr = 4294967296;
var
  RoundNbr : real;
  Seed: longword;
  i: integer;
begin
  lbRoundList.Clear;
  Seed := spSeed.Value;
  for i := 1 to seNbrSeed.Value do
    begin
      Seed := trunc(Round(Seed));
      RoundNbr := Seed / nbr;
      lbRoundList.Items.Add(FloatToStr(RoundNbr))
    end;
end;

procedure TfrmRandom.Button2Click(Sender: TObject);
var
  i: integer;
  RondNbr : real;
begin
  lbRandom.Clear;
  RandSeed := seRandSeed.Value;
  for i := 1 to seNbr.Value do
    begin
      RondNbr := Random;
      lbRandom.Items.Add(FloatToStr(RondNbr))
    end;
end;

end.
