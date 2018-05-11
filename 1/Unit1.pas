unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ClipBrd;

type
  TForm1 = class(TForm)
    S1: TEdit;
    S2: TEdit;
    Summ: TButton;
    Result: TLabel;
    Copy: TButton;
    Razn: TButton;
    Umn: TButton;
    Del: TButton;
    About: TButton;
    Settings: TButton;
    Step: TButton;
    Sqrt: TButton;
    x2: TButton;
    Sin1: TButton;
    Cos1: TButton;
    Exp1: TButton;
    Ln1: TButton;
    Help: TButton;
    procedure SummClick(Sender: TObject);
    procedure RaznClick(Sender: TObject);
    procedure UmnClick(Sender: TObject);
    procedure DelClick(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure S1KeyPress(Sender: TObject; var Key: Char);
    procedure S2KeyPress(Sender: TObject; var Key: Char);
    procedure CopyClick(Sender: TObject);
    procedure SettingsClick(Sender: TObject);
    procedure StepClick(Sender: TObject);
    procedure SqrtClick(Sender: TObject);
    procedure x2Click(Sender: TObject);
    procedure Sin1Click(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure Cos1Click(Sender: TObject);
    procedure Exp1Click(Sender: TObject);
    procedure Ln1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TForm1.AboutClick(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.CopyClick(Sender: TObject);
begin
Clipboard.AsText := Result.Caption;
end;

procedure TForm1.Cos1Click(Sender: TObject);
var s,sum1:real;
begin
sum1:=StrToFloat(S1.Text);
S:=cos(sum1);
result.Caption:='Cos ('+ floattostr(sum1)+ ') = ' + floattostr(s);
end;
procedure TForm1.DelClick(Sender: TObject);
var sum1,sum2,S:real;
begin
sum1:=StrToFloat(S1.Text);
sum2:=StrToFloat(S2.Text);
if sum2<>0 then begin
 S:=sum1/sum2;
Result.Caption:=FloatToStr(Sum1) + '/' + FLoatToStr(Sum2) + '=' + FloatToStr(S);
end;
end;

procedure TForm1.Exp1Click(Sender: TObject);
var s,sum1:real;
begin
sum1:=StrToFloat(S1.Text);
S:=exp(sum1);
result.Caption:='Exp (' + floattostr(sum1)+') = ' + floattostr(s);
end;

procedure TForm1.HelpClick(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm1.Ln1Click(Sender: TObject);
var s,sum1:real;
begin
sum1:=StrToFloat(S1.Text);
S:=ln(sum1);
result.Caption:='Ln (' + floattostr(sum1)+') = ' + floattostr(s);
end;

procedure TForm1.RaznClick(Sender: TObject);
var sum1,sum2,S:real;
begin
sum1:=StrToFloat(S1.Text);
sum2:=StrToFloat(S2.Text);
S:=sum1-sum2;
Result.Caption:=FloatToStr(Sum1) + '-' + FloatToStr(Sum2) + '=' + FloatToStr(S);
end;

procedure TForm1.UmnClick(Sender: TObject);
var sum1,sum2,S:real;
begin
sum1:=StrToFloat(S1.Text);
sum2:=StrToFloat(S2.Text);
S:=sum1*sum2;
Result.Caption:=FloatToStr(Sum1) + '*' + FloatToStr(Sum2) + '=' + FloatToStr(S);
end;

procedure TForm1.x2Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm1.S1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9': ;
'-',',':;
#8 : ;
#13 : S2.SetFocus;
else Key :=Chr(0);
end;
end;

procedure TForm1.S2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9': ;
'-',',':;
#8 : ;
else Key :=Chr(0);
end;
end;

procedure TForm1.SettingsClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.Sin1Click(Sender: TObject);
var s,sum1:real;
begin
sum1:=StrToFloat(S1.Text);
S:=sin(sum1);
result.Caption:='Sin (' + floattostr(sum1)+') = ' + floattostr(s);
end;

procedure TForm1.SqrtClick(Sender: TObject);
var sum1,sum2:integer;
S:real;
begin
sum1:=StrToint(S1.Text);
sum2:=StrToint(S2.Text);
if sum2<2 then sum2:=2;
S:=exp((1/sum2)*ln(sum1));
Result.Caption:=IntToStr(Sum1) + ' sqrt ' + IntToStr(Sum2) + '=' + FloatToStrF(S,ffFixed,4,2);
end;

procedure TForm1.StepClick(Sender: TObject);
var sum1,sum2,i:integer;
S:real;
begin
sum1:=StrToint(S1.Text);
sum2:=StrToint(S2.Text);
S:=sum1;
if sum2<0 then begin
      S:=Sum1;
      for i:=-2 downto sum2 do
        S:=s*sum1;
      S:=1/s;
end;
for i:=2 to sum2 do
  S:=s*sum1;
if sum2=0 then S:=1;
Result.Caption:=IntToStr(Sum1) + '^' + IntToStr(Sum2) + '=' + FloatToStrF(S,ffFixed,4,2);
end;

procedure TForm1.SummClick(Sender: TObject);
var sum1,sum2,s:real;
begin
sum1:=StrToFloat(S1.Text);
sum2:=StrToFloat(S2.Text);
S:=sum1+sum2;
Result.Caption:=FloatToStr(Sum1) + '+' + FloatToStr(Sum2) + '=' + FloatToStr(S);
end;

end.
