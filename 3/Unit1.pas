unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ClipBrd;

type
  TForm1 = class(TForm)
    Primer: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button0: TButton;
    Plus: TButton;
    Minus: TButton;
    Umn: TButton;
    Del: TButton;
    Calculate: TButton;
    C: TButton;
    BackSpace: TButton;
    sqrt: TButton;
    step: TButton;
    Continue: TButton;
    Mem1: TButton;
    Mem2: TButton;
    Help: TButton;
    Uravn: TButton;
    About: TButton;
    CopyPaste: TButton;
    Sin1: TButton;
    Cos1: TButton;
    Ln1: TButton;
    Exp1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure PlusClick(Sender: TObject);
    procedure CalculateClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure UmnClick(Sender: TObject);
    procedure DelClick(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure BackSpaceClick(Sender: TObject);
    procedure sqrtClick(Sender: TObject);
    procedure stepClick(Sender: TObject);
    procedure PrimerKeyPress(Sender: TObject; var Key: Char);
    procedure ContinueClick(Sender: TObject);
    procedure Mem1Click(Sender: TObject);
    procedure Mem2Click(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure Sin1Click(Sender: TObject);
    procedure Cos1Click(Sender: TObject);
    procedure Ln1Click(Sender: TObject);
    procedure Exp1Click(Sender: TObject);
    procedure CopyPasteClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure UravnClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,s:real;
  ch:char;
  st,m:string;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.AboutClick(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.BackSpaceClick(Sender: TObject);
var st:string;
begin
st:=Primer.Text;
delete(st,length(st),1);
Primer.Text:=st;
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '0';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ ',';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+ '9';
end;

procedure TForm1.CalculateClick(Sender: TObject);
var l,i:integer;
begin
st:=Primer.Text;
l:=length(Floattostr(a))+1;
delete(st,1,l);
if (not((ch='s') or (ch='c') or (ch='l') or (ch='e'))) and (ch<>'0')then b:=strtoFloat(st);
case ch of
'+':S:=a+b;
'-':S:=a-b;
'*':S:=a*b;
'/':S:=a/b;
'√':begin
if (a<2) then a:=2;
S:=exp((1/a)*ln(b));
end;
'^':begin
    S:=1;
    l:=trunc(b);
    for i:=1 to l do S:=s*a;
end;
's':S:=sin(a);
'c':S:=cos(a);
'l':if a<=0 then ShowMessage('Невозмаожно найти логарифм неположительного числа') else S:=Ln(a);
'e':S:=exp(a);
end;
ch:='0';
Primer.Text:=Primer.Text+'=' + FloattoStr(S);
Continue.SetFocus;
end;

procedure TForm1.CClick(Sender: TObject);
begin
Primer.Text:='';
ch:='0';
S:=0;
end;

procedure TForm1.ContinueClick(Sender: TObject);
begin
Primer.Text:=floattostr(s);
ch:='0';
S:=0;
end;

procedure TForm1.CopyPasteClick(Sender: TObject);
begin
if (Primer.Text<>'') and (Primer.Text<>Clipboard.AsText) then
    Clipboard.AsText:=Primer.Text
    else Primer.Text:=Clipboard.AsText
end;

procedure TForm1.Cos1Click(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='c';
  Primer.Text:='cos('+ Primer.Text+ ')';
end;
end;

procedure TForm1.DelClick(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='/';
  Primer.Text:=Primer.Text+ '/';
end;
end;

procedure TForm1.Exp1Click(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='e';
  Primer.Text:='Exp('+ Primer.Text+ ')';
end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
ch:='0';
end;

procedure TForm1.HelpClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.Ln1Click(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='l';
  Primer.Text:='Ln('+ Primer.Text+ ')';
end;
end;

procedure TForm1.Mem1Click(Sender: TObject);
begin
m:=Primer.Text;
end;

procedure TForm1.Mem2Click(Sender: TObject);
begin
Primer.Text:=m;
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='-';
  Primer.Text:=Primer.Text+ '-';
end;
end;

procedure TForm1.PlusClick(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='+';
  Primer.Text:=Primer.Text+ '+';
end;
end;

procedure TForm1.PrimerKeyPress(Sender: TObject; var Key: Char);
var l,i:integer;
begin
case Key of
'0'..'9': ;
',':;
#8 : ;
'p','P','З','з':begin
Key :=Chr(0);
Primer.Text:=Primer.Text + Floattostr(pi);
end;
'+': if (ch='0') and (s=0) then begin
a:=StrtoFloat(Primer.Text);
ch:='+';
end else Key :=Chr(0);
'-':begin
if (ch<>'0') and (s=0) then i:=0;
if i=1 then Key :=Chr(0);
if (ch='0') and (s=0) and not((Primer.Text='') or (Primer.Text='0'))then ch:='-';
i:=1;
end;
'*':if (ch='0') and (s=0) then begin
a:=StrtoFloat(Primer.Text);
ch:='*';
end else Key :=Chr(0);
'/':if (ch='0') and (s=0) then begin
a:=StrtoFloat(Primer.Text);
ch:='/';
end else Key :=Chr(0);
'v','V','м','М': if (ch='0') and (s=0) then begin
a:=StrtoFloat(Primer.Text);
ch:='√';
Primer.Text:=Primer.Text+ '√';
Key :=Chr(0);
end else Key :=Chr(0);
'^',':':  if (ch='0') and (s=0) then begin
a:=StrtoFloat(Primer.Text);
ch:='^';
Key:='^';
end else Key :=Chr(0);
#13,'=' : begin
key :=Chr(0);
st:=Primer.Text;
l:=length(Floattostr(a))+1;
delete(st,1,l);
if (not((ch='s') or (ch='c') or (ch='l') or (ch='e'))) and (ch<>'0')then b:=strtoFloat(st);
case ch of
'+':S:=a+b;
'-':S:=a-b;
'*':S:=a*b;
'/':S:=a/b;
'√':begin
if (a<2) then a:=2;
S:=exp((1/a)*ln(b));
end;
'^':begin
    S:=1;
    l:=trunc(b);
    for i:=1 to l do S:=s*a;
end;
's':S:=sin(a);
'c':S:=cos(a);
'l':S:=Ln(a);
'e':S:=exp(a);
end;
ch:='0';
Primer.Text:=Primer.Text+'=' + FloattoStr(S);
Continue.SetFocus;
end;
else Key :=Chr(0);
end;
end;

procedure TForm1.Sin1Click(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='s';
  Primer.Text:='sin('+ Primer.Text+ ')';
end;
end;

procedure TForm1.sqrtClick(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='√';
  Primer.Text:=Primer.Text+ '√';
end;
end;

procedure TForm1.stepClick(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='^';
  Primer.Text:=Primer.Text+ '^';
end;
end;

procedure TForm1.UmnClick(Sender: TObject);
begin
if (ch='0') and (s=0) then begin
  if Primer.Text='' then Primer.Text:='0';
  a:=StrtoFloat(Primer.Text);
  ch:='*';
  Primer.Text:=Primer.Text+ '*';
end;
end;

procedure TForm1.UravnClick(Sender: TObject);
begin
Form4.Show;
end;

end.
