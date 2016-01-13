program Mot;

uses
  Forms,
  UMain in 'UMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Analyse d''un mot';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
