unit uSecondTask;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Data.Win.ADODB, Vcl.StdCtrls;

type
  TFormSecondTask = class(TForm)
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ENameFirm: TEdit;
    EJurCity: TEdit;
    ButtonSearch: TButton;
    EPostCity: TEdit;
    ButtonClear: TButton;
    procedure ButtonSearchClick(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSecondTask: TFormSecondTask;

implementation

{$R *.dfm}

uses
  uMain;

procedure TFormSecondTask.ButtonClearClick(Sender: TObject);
begin
   ENameFirm.Clear;
   EJurCity.Clear;
   EPostCity.Clear;
   ButtonSearchClick(self);
end;

procedure TFormSecondTask.ButtonSearchClick(Sender: TObject);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('TRANSFORM Sum(d.Sum) AS sum_doc ' +
                    'SELECT Year(d.DOC_DATE) AS  year_doc ' +
                    'FROM ((DOCUMENT AS d ' +
                        'INNER JOIN FIRM AS f ON d.firm_id = f.firm_id) ' +
                        'INNER JOIN city AS jc ON f.JUR_CITY_ID = jc.city_id) ' +
                        'LEFT JOIN city AS pc ON f.POST_CITY_ID = pc.city_id ' +
                    'WHERE  Instr(LCase(f.name), LCase(' + QuotedStr(ENameFirm.Text) + ')) > 0 ' +
                    'And  Instr(LCase(jc.name), LCase(' + QuotedStr(EJurCity.Text) + ')) > 0 ' +
                    'And  (Instr(LCase(pc.name), LCase(' + QuotedStr(EPostCity.Text) + ')) > 0 ' +
                         'or ' + QuotedStr(EPostCity.Text) + ' = '''' ) ' +
                    'GROUP BY Year(d.DOC_DATE) ' +
                    'PIVOT Month(d.DOC_DATE);' );
  ADOQuery1.Open;
end;

end.
