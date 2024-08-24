object FormFirstTask: TFormFirstTask
  Left = 0
  Top = 0
  Caption = #1047#1072#1076#1072#1085#1080#1077' '#1076#1083#1103' '#1089#1086#1073#1077#1089#1077#1076#1086#1074#1072#1085#1080#1103' ('#1087#1077#1088#1074#1072#1103' '#1095#1072#1089#1090#1100')'
  ClientHeight = 553
  ClientWidth = 644
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
    Left = 8
    Top = 45
    Width = 112
    Height = 15
    Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
  end
  object Label3: TLabel
    Left = 8
    Top = 78
    Width = 91
    Height = 15
    Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 120
    Width = 641
    Height = 425
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
  object ENameFirm: TEdit
    Left = 144
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object EJurCity: TEdit
    Left = 144
    Top = 43
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object ButtonSearch: TButton
    Left = 288
    Top = 74
    Width = 121
    Height = 25
    Caption = #1055#1086#1080#1089#1082
    TabOrder = 3
    OnClick = ButtonSearchClick
  end
  object EPostCity: TEdit
    Left = 144
    Top = 75
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object Button2: TButton
    Left = 288
    Top = 8
    Width = 121
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 5
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 476
    Top = 28
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = FormMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT f.name AS firm_name, '
      '          jc.name AS city_jur, '
      '          pc.name AS city_post'
      'FROM (FIRM AS f '
      '     INNER JOIN city AS jc ON jc.city_id = F.JUR_CITY_ID) '
      '     LEFT JOIN city AS pc ON pc.city_id = F.POST_CITY_ID'
      ''
      'ORDER BY f.name')
    Left = 574
    Top = 28
  end
end
