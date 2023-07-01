object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Master Member ILC'
  ClientHeight = 545
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 304
    Width = 562
    Height = 225
    Caption = 'Data Member ILC'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 3
      Top = 16
      Width = 556
      Height = 206
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 20
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'email'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'npm'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nama'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'idline'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'angkatan'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ttl'
          Title.Caption = 'TTL'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hobi'
          Title.Caption = 'Hobi'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'waktu'
          Title.Caption = 'Waktu Join'
          Width = 125
          Visible = True
        end>
    end
  end
  object ADOMahasiswaCon: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=ilc-3' +
      '2-64'
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object ADOMahasiswa: TADOQuery
    Active = True
    Connection = ADOMahasiswaCon
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from master_member order by waktu asc')
    Left = 544
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOMahasiswa
    Left = 536
    Top = 56
  end
end
