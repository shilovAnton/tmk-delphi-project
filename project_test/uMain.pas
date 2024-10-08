unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uFirstTask, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, uSecondTask;

type
  TFormMain = class(TForm)
    ButtonFirstTask: TButton;
    ButtonSecondTask: TButton;
    ADOConnection1: TADOConnection;
    procedure ButtonFirstTaskClick(Sender: TObject);
    procedure ButtonSecondTaskClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

procedure TFormMain.ButtonFirstTaskClick(Sender: TObject);
begin
  FormFirstTask.Show;
end;

procedure TFormMain.ButtonSecondTaskClick(Sender: TObject);
begin
  FormSecondTask.Show;
end;

end.
