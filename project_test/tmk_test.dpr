program tmk_test;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FormMain},
  uFirstTask in 'uFirstTask.pas' {FormFirstTask},
  uSecondTask in 'uSecondTask.pas' {FormSecondTask};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormFirstTask, FormFirstTask);
  Application.CreateForm(TFormSecondTask, FormSecondTask);
  Application.Run;
end.
