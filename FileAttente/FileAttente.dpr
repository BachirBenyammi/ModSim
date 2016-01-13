program FileAttente;

uses
  Forms,
  UFile in 'UFile.pas' {frmFile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmFile, frmFile);
  Application.Run;
end.
