program tmk_test;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {FormMain},
  uFirstTask in 'uFirstTask.pas' {FormFirstTask},
  uSecondTask in 'uSecondTask.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormFirstTask, FormFirstTask);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
