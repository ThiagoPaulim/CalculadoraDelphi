program Project1;

uses
  Forms,
  U_principal in 'U_principal.pas' {Calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.HelpFile := 'C:\Users\leonardo\Desktop\Minha Calculadora\Calc.exe';
  Application.CreateForm(TCalculadora, Calculadora);
  Application.Run;
end.
