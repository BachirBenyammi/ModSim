unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Quitter1: TMenuItem;
    Algorithmes1: TMenuItem;
    Apropos1: TMenuItem;
    Apropos2: TMenuItem;
    MachinestatfinisMEF1: TMenuItem;
    Analyseduneconstanterelle1: TMenuItem;
    Machinecaf1: TMenuItem;
    Analysedunmotabab1: TMenuItem;
    Montredgtale1: TMenuItem;
    lvision1: TMenuItem;
    Echontionnage1: TMenuItem;
    Picedemonnaie1: TMenuItem;
    Lancementdund1: TMenuItem;
    CalculedePI1: TMenuItem;
    RoundSeedRandom1: TMenuItem;
    GroupBox1: TGroupBox;
    btnMot: TButton;
    btnConst: TButton;
    btnMachine: TButton;
    btnMontre: TButton;
    btnTV: TButton;
    GroupBox2: TGroupBox;
    btnPeice: TButton;
    btnDe: TButton;
    btnPI: TButton;
    btnRandom: TButton;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    btnFile: TButton;
    Filedattente1: TMenuItem;
    Filedattentesomple1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Apropos2Click(Sender: TObject);
    procedure Quitter1Click(Sender: TObject);
    procedure btnMotClick(Sender: TObject);
    procedure btnConstClick(Sender: TObject);
    procedure btnMachineClick(Sender: TObject);
    procedure btnMontreClick(Sender: TObject);
    procedure btnTVClick(Sender: TObject);
    procedure btnPeiceClick(Sender: TObject);
    procedure btnDeClick(Sender: TObject);
    procedure btnPIClick(Sender: TObject);
    procedure btnRandomClick(Sender: TObject);
    procedure btnFileClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses USplash, UAbout, UConste, UDe, UMachine, UMontre, UMot, UPeice, UPI,
  URandom, UTV, UFile;

{$R *.dfm}

procedure TMainForm.FormCreate(Sender: TObject);
begin
  frmSplash := TfrmSplash.Create(Application);
  try
    frmSplash.ShowModal;
  finally
    frmSplash.free;
  end;
end;

procedure TMainForm.Apropos2Click(Sender: TObject);
begin
  frmAbout := TfrmAbout.Create(Application);
  try
    frmAbout.ShowModal;
  finally
    frmAbout.free;
  end;
end;

procedure TMainForm.Quitter1Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.btnMotClick(Sender: TObject);
begin
  frmMot.ShowModal;
end;

procedure TMainForm.btnConstClick(Sender: TObject);
begin
  frmConst.ShowModal
end;

procedure TMainForm.btnMachineClick(Sender: TObject);
begin
  FrmMachine.ShowModal
end;

procedure TMainForm.btnMontreClick(Sender: TObject);
begin
  frmMontre.ShowModal
end;

procedure TMainForm.btnTVClick(Sender: TObject);
begin
  frmTV.ShowModal
end;

procedure TMainForm.btnPeiceClick(Sender: TObject);
begin
  frmPeice.ShowModal
end;

procedure TMainForm.btnDeClick(Sender: TObject);
begin
  frmDE.ShowModal
end;

procedure TMainForm.btnPIClick(Sender: TObject);
begin
  frmPI.ShowModal
end;

procedure TMainForm.btnRandomClick(Sender: TObject);
begin
  frmRandom.ShowModal
end;

procedure TMainForm.btnFileClick(Sender: TObject);
begin
  frmfile.ShowModal
end;

end.
