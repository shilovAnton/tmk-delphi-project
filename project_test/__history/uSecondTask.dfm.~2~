object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1085#1080#1077' '#1076#1083#1103' '#1089#1086#1073#1077#1089#1077#1076#1086#1074#1072#1085#1080#1103' 2 ('#1074#1090#1086#1088#1072#1103' '#1095#1072#1089#1090#1100')'
  ClientHeight = 246
  ClientWidth = 892
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 128
    Width = 882
    Height = 113
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Year'
        Title.Caption = #1043#1086#1076
        Title.Color = clInfoBk
        Visible = True
      end
      item
        Expanded = False
        FieldName = '1'
        Title.Caption = #1071#1085#1074#1072#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '2'
        Title.Caption = #1060#1077#1074#1088#1072#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '3'
        Title.Caption = #1052#1072#1088#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = '4'
        Title.Caption = #1040#1087#1088#1077#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '5'
        Title.Caption = #1052#1072#1081
        Visible = True
      end
      item
        Expanded = False
        FieldName = '6'
        Title.Caption = #1048#1102#1085#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '7'
        Title.Caption = #1048#1102#1083#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '8'
        Title.Caption = #1040#1074#1075#1091#1089#1090
        Visible = True
      end
      item
        Expanded = False
        FieldName = '9'
        Title.Caption = #1057#1077#1085#1090#1103#1073#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '10'
        Title.Caption = #1054#1082#1090#1103#1073#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '11'
        Title.Caption = #1053#1086#1103#1073#1088#1100
        Visible = True
      end
      item
        Expanded = False
        FieldName = '12'
        Title.Caption = #1044#1077#1082#1072#1073#1088#1100
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 698
    Top = 46
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = FormMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      ''
      'TRANSFORM Sum(d.Sum) AS sum_doc'
      'SELECT Year(d.DOC_DATE) AS [Year]'
      
        'FROM ((DOCUMENT AS d INNER JOIN FIRM AS f ON d.firm_id = f.firm_' +
        'id) INNER JOIN city AS jc ON f.JUR_CITY_ID = jc.city_id) LEFT JO' +
        'IN city AS pc ON f.POST_CITY_ID = pc.city_id'
      ''
      'GROUP BY Year(d.DOC_DATE)'
      'PIVOT Month(d.DOC_DATE);')
    Left = 796
    Top = 46
  end
end
