unit uDtmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase;

type
  TDataModule1 = class(TDataModule)
    dtbConexao: TIBDatabase;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
