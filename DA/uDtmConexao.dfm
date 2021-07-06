object DtmConexao: TDtmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object TDtbConexao: TIBDatabase
    ServerType = 'IBServer'
    Left = 16
    Top = 8
  end
  object TTrasacao: TIBTransaction
    Left = 88
    Top = 8
  end
end
