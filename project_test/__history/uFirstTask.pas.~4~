unit uFirstTask;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TFormFirstTask = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    Label1: TLabel;
    ENameFirm: TEdit;
    Label2: TLabel;
    EJurCity: TEdit;
    ButtonSearch: TButton;
    EPostCity: TEdit;
    Label3: TLabel;
    Button2: TButton;
    procedure ButtonSearchClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFirstTask: TFormFirstTask;

implementation

{$R *.dfm}

uses
  uMain;

procedure TFormFirstTask.Button2Click(Sender: TObject);
begin
   ENameFirm.Clear;
   EJurCity.Clear;
   EPostCity.Clear;
   ButtonSearchClick(self);
end;

procedure TFormFirstTask.ButtonSearchClick(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT f.name AS firm_name, ' +
                           'jc.name AS city_jur, ' +
                           'pc.name AS city_post ' +
                    'FROM (FIRM AS f ' +
                        'INNER JOIN city AS jc ON jc.city_id = F.JUR_CITY_ID) ' +
                        'LEFT JOIN city AS pc ON pc.city_id = F.POST_CITY_ID ' +
                    'WHERE  Instr(LCase(f.name), LCase(' + QuotedStr(ENameFirm.Text) + ')) > 0 ' +
                    'And  Instr(LCase(jc.name), LCase(' + QuotedStr(EJurCity.Text) + ')) > 0  ' +
                    'And  (Instr(LCase(pc.name), LCase(' + QuotedStr(EPostCity.Text) + ')) > 0  ' +
                         'or ' + QuotedStr(EPostCity.Text) + ' = '''' ) '  +
                    'ORDER BY f.name;' );
  ADOQuery1.Open;
end;

end.
