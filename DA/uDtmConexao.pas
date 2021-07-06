unit uDtmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase;

type
  TDtmConexao = class(TDataModule)
    TDtbConexao: TIBDatabase;
    TTrasacao: TIBTransaction;
  private
    { Private declarations }
    procedure Configuracao;

  public
    { Public declarations }

    constructor Create;
    destructor Destroy;
    procedure AbreConexao;
    procedure FechaConexao;
  end;

var
  DtmConexao: TDtmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
{ TDtmConexao }

constructor TDtmConexao.Create;
begin
  Configuracao;
end;


procedure TDtmConexao.Configuracao;
begin
  TDtbConexao:= TIBDatabase.Create(nil);   /// editado para o componnete
  TTrasacao:= TIBTransaction.Create(nil);  /// editado para o componnete

  with TDtbConexao do
  begin
      DatabaseName:= 'C:\Users\Home\Documents\BancoDados\ERP.FDB';
      Params.Values['user_name']:= 'sysdba';
      Params.Values['password']:= 'masterkey';
      Params.Values['lc_ctype']:= 'WIN1252';
      LoginPrompt:= False;
      Connected:= True;
      DefaultTransaction:= TTrasacao;
      TTrasacao.DefaultDatabase:= TDtbConexao;
      TTrasacao.Active:= true;
  end;
end;

procedure TDtmConexao.AbreConexao;
begin
  TDtbConexao.Open;
end;

procedure TDtmConexao.FechaConexao;
begin
  TDtbConexao.Close;
end;

destructor TDtmConexao.Destroy;
begin
  TTrasacao.Free;
  TDtbConexao.Free;
end;

end.
