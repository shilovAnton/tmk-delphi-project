program tmk_test;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FormMain},
  uFirstTask in 'uFirstTask.pas' {FormFirstTask};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormFirstTask, FormFirstTask);
  Application.Run;
end.
