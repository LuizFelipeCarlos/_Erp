object PedComprasVendas: TPedComprasVendas
  Left = 0
  Top = 0
  ClientHeight = 475
  ClientWidth = 763
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDadosCliFor: TPanel
    Left = 0
    Top = 0
    Width = 499
    Height = 99
    BorderStyle = bsSingle
    TabOrder = 0
    object edtCliFor: TEdit
      Left = 8
      Top = 8
      Width = 417
      Height = 21
      TabOrder = 0
      Text = 'Nome'
    end
    object btnPesqCliFor: TButton
      Left = 431
      Top = 6
      Width = 34
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = btnPesqCliForClick
    end
    object cbbContato: TComboBox
      Left = 8
      Top = 35
      Width = 457
      Height = 21
      TabOrder = 2
      Text = 'Contato'
    end
    object edtTelefone: TEdit
      Left = 8
      Top = 62
      Width = 146
      Height = 21
      TabOrder = 3
      Text = 'Telefone'
    end
    object edtEmail: TEdit
      Left = 160
      Top = 62
      Width = 305
      Height = 21
      TabOrder = 4
      Text = 'Email'
    end
  end
  object pnlTotais: TPanel
    Left = 272
    Top = 392
    Width = 492
    Height = 83
    BorderStyle = bsSingle
    TabOrder = 1
    object lblValorTotalPedido: TLabel
      Left = 21
      Top = 40
      Width = 159
      Height = 24
      Caption = 'R$ Total Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object edtValorTotalPedido: TEdit
      Left = 232
      Top = 40
      Width = 249
      Height = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlItens: TPanel
    Left = 0
    Top = 98
    Width = 764
    Height = 295
    Align = alCustom
    BorderStyle = bsSingle
    TabOrder = 2
    object edtProduto: TEdit
      Left = 8
      Top = 16
      Width = 161
      Height = 21
      TabOrder = 0
      Text = 'Produto'
    end
    object btnAdicaoProduto: TButton
      Left = 175
      Top = 14
      Width = 42
      Height = 25
      Caption = '+'
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 45
      Width = 745
      Height = 241
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Cod. Produto'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descri'#231#227'o'
          Width = 438
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor Unitario'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor Total'
          Width = 70
          Visible = True
        end>
    end
  end
  object pnlCondicoes: TPanel
    Left = 0
    Top = 392
    Width = 273
    Height = 83
    BorderStyle = bsSingle
    TabOrder = 3
    object cbbFormaPagto: TComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      TabOrder = 0
      Text = 'Forma Pagamento'
    end
    object cbbCondicaoPagto: TComboBox
      Left = 9
      Top = 43
      Width = 145
      Height = 21
      TabOrder = 1
      Text = 'Condi'#231#227'o Pagamento'
    end
  end
  object pnlInfoCredito: TPanel
    Left = 496
    Top = 0
    Width = 268
    Height = 99
    BorderStyle = bsSingle
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    object lblCreditoAprovado: TLabel
      Left = 16
      Top = 11
      Width = 79
      Height = 13
      Caption = 'Cr'#233'dito Liberado'
    end
    object lblCreditoUtilizado: TLabel
      Left = 16
      Top = 38
      Width = 78
      Height = 13
      Caption = 'Cr'#233'dito Utilizado'
    end
    object lblCreditoDisponivel: TLabel
      Left = 16
      Top = 65
      Width = 86
      Height = 13
      Caption = 'Cr'#233'dito Dispon'#237'vel'
    end
    object edtCredito: TEdit
      Left = 128
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EdtValidade: TEdit
      Left = 128
      Top = 35
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtCreditoDisponivel: TEdit
      Left = 128
      Top = 62
      Width = 121
      Height = 21
      TabOrder = 2
    end
  end
end
