program MachineCafe;

uses
  Forms,
  UMain in 'UMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Analyse d''une machine à café';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
