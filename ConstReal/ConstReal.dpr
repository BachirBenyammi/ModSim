program ConstReal;

uses
  Forms,
  UMain in 'UMain.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Analyse d''une constante réelle';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
