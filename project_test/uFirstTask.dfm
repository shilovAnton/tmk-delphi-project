object FormFirstTask: TFormFirstTask
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1085#1080#1077' '#1076#1083#1103' '#1089#1086#1073#1077#1089#1077#1076#1086#1074#1072#1085#1080#1103' ('#1087#1077#1088#1074#1072#1103' '#1095#1072#1089#1090#1100')'
  ClientHeight = 556
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 127
    Height = 15
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
  end
  object Label2: TLabel
    Left = 102
    Top = 40
    Width = 33
    Height = 15
    Caption = #1040#1076#1088#1077#1089
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 80
    Width = 641
    Height = 465
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'firm_name'
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1092#1080#1088#1084#1099
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'city_jur'
        Title.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'city_post'
        Title.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
        Width = 200
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 144
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 144
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 280
    Top = 36
    Width = 121
    Height = 25
    Caption = #1048#1089#1082#1072#1090#1100
    TabOrder = 3
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 464
    Top = 16
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = FormMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT f.name AS firm_name, c.name AS city_jur, c2.name AS city_' +
        'post'
      
        'FROM (FIRM AS f INNER JOIN city AS c ON c.city_id = F.JUR_CITY_I' +
        'D) LEFT JOIN city AS c2 ON c2.city_id = F.POST_CITY_ID'
      ''
      'ORDER BY f.name;')
    Left = 568
    Top = 16
  end
end
