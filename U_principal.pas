unit U_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TCalculadora = class(TForm)
    edtvalor: TEdit;
    Sbt1: TSpeedButton;
    Sbt2: TSpeedButton;
    Sbt3: TSpeedButton;
    Sbtsomar: TSpeedButton;
    Sbtigual: TSpeedButton;
    Sbt4: TSpeedButton;
    Sbt5: TSpeedButton;
    Sbt6: TSpeedButton;
    Sbtsubtrair: TSpeedButton;
    Sbt7: TSpeedButton;
    Sbt8: TSpeedButton;
    Sbt9: TSpeedButton;
    Sbtmultiplicar: TSpeedButton;
    Sbtce: TSpeedButton;
    Sbt0: TSpeedButton;
    Sbtvirgula: TSpeedButton;
    Sbtdividir: TSpeedButton;


    procedure FormCreate(Sender: TObject);
    procedure setar_editvalor(valor : string);
    procedure inicializar_valores;
    procedure operadores_evento(operador_atual : string);

    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Sbt1Click(Sender: TObject);

  private
  var
  concatenar : boolean;
  numero: double;
  operador: string;

  procedure setarValor(Sender: TObject);
  procedure porVirgula;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Calculadora: TCalculadora;

implementation

{$R *.dfm}

procedure TCalculadora.operadores_evento;
begin
    if operador <> '' then
      begin
          if operador = '+' then
                     edtvalor.Text := FloatToStr(numero + (StrToFloat(edtvalor.Text)))
          else if operador = '-' then
                      edtvalor.Text := FloatToStr(numero - (StrToFloat(edtvalor.Text)))
          else if operador = '*' then
                      edtvalor.Text := FloatToStr(numero * (StrToFloat(edtvalor.Text)))
          else if operador = '/' then
                      begin
                      try
                      edtvalor.Text := FloatToStr(numero / (StrToFloat(edtvalor.Text)));
                      Except
                      On e:exception do
                      showmessage('Impossível fazer Divisões por zero!');
                      end;
                      end;

      end;

    operador := operador_atual;
    numero   := StrToFloat(edtvalor.Text);
    concatenar:= false;


end;
procedure TCalculadora.porvirgula;
var
x: integer ;
achou: boolean;
begin
if concatenar then
begin
            achou := false;
            x:= 1;
            while not achou and (x <= Length(edtvalor.Text)) do
            begin
              if copy(edtvalor.Text,x,1) = ',' then
              achou := true;


              Inc(x);
            end;
            if not achou then
            edtvalor.Text := edtvalor.Text+',' ;


end
else
edtvalor.Text := '0,';


concatenar := true;

end;


procedure TCalculadora.inicializar_valores;
begin
concatenar := true;
operador   := '';
numero := 0.0;
end;
procedure TCalculadora.setarValor(Sender: TObject);
begin
if( TspeedButton(sender) = Sbt1) then
  setar_editvalor('1')
  else if (TspeedButton(sender) = Sbt2)   then
  setar_editvalor('2')
  else if (TspeedButton(sender) = Sbt3)   then
  setar_editvalor('3')
  else if (TspeedButton(sender) = Sbt4)   then
  setar_editvalor('4')
  else if (TspeedButton(sender) = Sbt5)   then
  setar_editvalor('5')
  else if (TspeedButton(sender) = Sbt6)   then
  setar_editvalor('6')
  else if (TspeedButton(sender) = Sbt7)   then
  setar_editvalor('7')
  else if (TspeedButton(sender) = Sbt8)   then
  setar_editvalor('8')
  else if (TspeedButton(sender) = Sbt9)   then
  setar_editvalor('9')
  else if (TspeedButton(sender) = Sbt0)   then
  setar_editvalor('0')
  else if (TspeedButton(sender) = Sbtsomar)   then
  operadores_evento('+')
  else if (TspeedButton(sender) = Sbtmultiplicar)   then
  operadores_evento('*')
  else if (TspeedButton(sender) = Sbtdividir)   then
  operadores_evento('/')
  else if (TspeedButton(sender) = Sbtsubtrair)   then
  operadores_evento('-')
  else if (TspeedButton(sender) = Sbtvirgula)   then
  porvirgula
  else if (TspeedButton(sender) = Sbtigual) then
  operadores_evento('')

  else if (TspeedButton(sender) = Sbtce)   then
  begin
    edtvalor.Text := '0';
    operador   := '';
    numero := 0.0;
  end;


end;

procedure TCalculadora.setar_editvalor;
begin
if edtvalor.Text = '0' then
edtvalor.Text := '';
          if concatenar then
              edtvalor.Text := edtvalor.Text + valor
          else
              edtvalor.Text := valor;


concatenar := true;
end;




procedure TCalculadora.Sbt1Click(Sender: TObject);
begin
    setarValor(sender);
end;








procedure TCalculadora.FormCreate(Sender: TObject);
begin
inicializar_valores;
end;

procedure TCalculadora.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key in ['0','1','2','3','4','5','6','7','8','9'] then
    setar_editvalor(key)

else if key = '+' then
     setarValor(SbtSomar)
else if key = '-' then
     setarValor(Sbtsubtrair)
else if key = '*' then
     setarValor(Sbtmultiplicar)
else if key = '/' then
     setarValor(Sbtdividir)
else if key = ',' then
     porVirgula
else if key in ['=',#13] then
     setarValor(Sbtigual)
else if key = #27 then
     setarValor(Sbtce);

end;

end.
