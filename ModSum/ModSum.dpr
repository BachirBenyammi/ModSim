program ModSum;

uses
  Forms,
  UMain in 'UMain.pas' {MainForm},
  UAbout in 'UAbout.pas' {frmAbout},
  UConste in 'UConste.pas' {frmConst},
  UDe in 'UDe.pas' {frmDE},
  UMachine in 'UMachine.pas' {FrmMachine},
  UMontre in 'UMontre.pas' {frmMontre},
  UMot in 'UMot.pas' {frmMot},
  UPeice in 'UPeice.pas' {frmPeice},
  UPI in 'UPI.pas' {frmPI},
  URandom in 'URandom.pas' {frmRandom},
  USplash in 'USplash.pas' {frmSplash},
  UTV in 'UTV.pas' {frmTV},
  UFile in 'UFile.pas' {frmFile};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Modélisation & Simulation';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TfrmConst, frmConst);
  Application.CreateForm(TfrmDE, frmDE);
  Application.CreateForm(TFrmMachine, FrmMachine);
  Application.CreateForm(TfrmMontre, frmMontre);
  Application.CreateForm(TfrmMot, frmMot);
  Application.CreateForm(TfrmPeice, frmPeice);
  Application.CreateForm(TfrmPI, frmPI);
  Application.CreateForm(TfrmRandom, frmRandom);
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TfrmTV, frmTV);
  Application.CreateForm(TfrmFile, frmFile);
  Application.Run;
end.
