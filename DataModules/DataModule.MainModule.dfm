object MainModule: TMainModule
  OnCreate = DataModuleCreate
  Height = 247
  Width = 383
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 232
    Top = 8
  end
  object FDConnection1: TFDConnection
    ConnectionName = 'condominiodb'
    Params.Strings = (
      
        'Database=C:\Users\felip\Documents\Embarcadero\Studio\Projects\Co' +
        'ndominioApp\DataModules\database.sqlite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    AfterConnect = FDConnection1AfterConnect
    BeforeConnect = FDConnection1BeforeConnect
    Left = 136
    Top = 8
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 184
    Top = 96
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 280
    Top = 96
  end
end
