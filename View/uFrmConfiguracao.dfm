object FrmConfiguracao: TFrmConfiguracao
  Left = 0
  Top = 0
  Caption = 'Configura'#231#227'o'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 201
    Align = alClient
    TabOrder = 0
    object btnClienteFornecedor: TButton
      Left = 8
      Top = 8
      Width = 169
      Height = 41
      Caption = 'Cadastro Cliente / Fornecedor'
      TabOrder = 0
      OnClick = btnClienteFornecedorClick
    end
    object Button2: TButton
      Left = 8
      Top = 55
      Width = 169
      Height = 41
      Caption = 'Button1'
      TabOrder = 1
    end
  end
end
