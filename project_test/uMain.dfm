object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'TMK '#1058#1077#1089#1090#1086#1074#1086#1077
  ClientHeight = 349
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object ButtonFirstTask: TButton
    Left = 80
    Top = 88
    Width = 289
    Height = 65
    Caption = #1047#1072#1076#1072#1085#1080#1077' '#1076#1083#1103' '#1089#1086#1073#1077#1089#1077#1076#1086#1074#1072#1085#1080#1103' ('#1087#1077#1088#1074#1072#1103' '#1095#1072#1089#1090#1100')'
    TabOrder = 0
    OnClick = ButtonFirstTaskClick
  end
  object ButtonSecondTask: TButton
    Left = 80
    Top = 200
    Width = 289
    Height = 65
    Caption = #1047#1072#1076#1072#1085#1080#1077' '#1076#1083#1103' '#1089#1086#1073#1077#1089#1077#1076#1086#1074#1072#1085#1080#1103' 2 ('#1074#1090#1086#1088#1072#1103' '#1095#1072#1089#1090#1100')'
    TabOrder = 1
    OnClick = ButtonSecondTaskClick
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\TM' +
      'K_project\Database1.mdb;Mode=Share Deny None;Persist Security In' +
      'fo=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path=""' +
      ';Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLED' +
      'B:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Je' +
      't OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passwo' +
      'rd="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt D' +
      'atabase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet O' +
      'LEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
end
