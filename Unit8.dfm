object Form8: TForm8
  Left = 320
  Top = 155
  Width = 928
  Height = 480
  Caption = 'REGISTER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 48
    Top = 48
    Width = 64
    Height = 16
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 48
    Top = 80
    Width = 63
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 48
    Top = 112
    Width = 34
    Height = 16
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object e_1: TEdit
    Left = 176
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object e_2: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object e_3: TEdit
    Left = 176
    Top = 112
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'user'
  end
  object btn1: TButton
    Left = 80
    Top = 168
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 168
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 4
    OnClick = btn2Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_shophp'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\VISUAL 3 SEM 5\Tugas_Visual3\libmysql.dll'
    Left = 16
    Top = 220
  end
  object zqry1: TZQuery
    Connection = con1
    Filter = 'Form8'
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 68
    Top = 216
  end
end
