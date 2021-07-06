unit uValidacoes;

interface
  type
    TCampoVazio = class
      public
        function VerificaCampoVazio(ValorCampo: string): Boolean;
    end;

implementation

{ TCampoVazio }

function TCampoVazio.VerificaCampoVazio(ValorCampo: string): Boolean;
begin
  if ValorCampo <> '' then
  begin
    result:= true;
  end else
      begin
        result:= false;
      end;
end;

end.
