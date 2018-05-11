unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Clipbrd;

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
    Button0: TButton;
    Button10: TButton;
    Calculate: TButton;
    Plus: TButton;
    Minus: TButton;
    Umn: TButton;
    Del: TButton;
    Clear: TButton;
    pi1: TButton;
    Step: TButton;
    Koren: TButton;
    Bs: TButton;
    CE: TButton;
    BSin: TButton;
    BCos: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Barctg: TButton;
    BLn: TButton;
    BExp: TButton;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
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
    procedure FormActivate(Sender: TObject);
    procedure CalculateClick(Sender: TObject);
    procedure MinusClick(Sender: TObject);
    procedure UmnClick(Sender: TObject);
    procedure DelClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure pi1Click(Sender: TObject);
    procedure PrimerKeyPress(Sender: TObject; var Key: Char);
    procedure StepClick(Sender: TObject);
    procedure KorenClick(Sender: TObject);
    procedure BsClick(Sender: TObject);
    procedure CEClick(Sender: TObject);
    procedure BSinClick(Sender: TObject);
    procedure BCosClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure BarctgClick(Sender: TObject);
    procedure BLnClick(Sender: TObject);
    procedure BExpClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:array [1..100] of real;
  ch:array[1..100] of char;
  S:real;
  i,l,x:integer;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure ocr(s:string);
var j:integer;
z:string;
begin
i:=1;
  for j := 1 to length(s) do
    case s[j] of
      '+','-','*','/','√','^':begin
          a[i]:=strtofloat(z);
          ch[i]:=s[j];
          i:=i+1;
          z:='';
      end;
      '0'..'9':z:=z+s[j];
    end;
ch[i]:='=';
a[i]:=strtofloat(z);
end;

function del(n,i:integer):integer;
var j:integer;
begin
  for j:= n to i do begin
     a[j+1]:=a[j+2];
     ch[j]:=ch[j+1];
  end;
  a[i]:=0;
  ch[i-1]:=' ';
  del:=i-1;
end;

function Calc (p:string):string;
var j,x,y:integer;
z:real;
begin
j:=1;
while j<i do begin
    if (ch[j]='s') or (ch[j]='c') or (ch[j]='l') or (ch[j]='e') or (ch[j]='a') then begin
      case ch[j] of
        's':a[j]:=sin(a[j]);
        'c':a[j]:=cos(a[j]);
        'l':a[j]:=ln(a[j]);
        'e':a[j]:=exp(a[j]);
        'a':a[j]:=arctan(a[j]);
      end;
      i:=del(j,i);
      j:=j-1;
    end;
    j:=j+1;
end;
j:=1;
while j<i do begin
     if (ch[j]='^') or (ch[j]='√') then begin
       case ch[j] of
         '^':begin
            z:=a[j];
            y:=trunc(a[j+1]);
            for x:=2 to y do a[j]:=a[j]*z;
         end;
         '√':begin
            if (a[j+1]<2) then a[j+1]:=2;
            a[j]:=exp((1/a[j+1])*ln(a[j]));
          end;
       end;
       i:=del(j,i);
       j:=j-1;
     end;
     j:=j+1;
end;
j:=1;
while j<i do begin
    if (ch[j]='*') or (ch[j]='/') then begin
      case ch[j] of
        '*':a[j]:=a[j]*a[j+1];
        '/':a[j]:=a[j]/a[j+1];
      end;
      i:=del(j,i);
      j:=j-1;
    end;
    j:=j+1;
end;
j:=1;
while j<i do begin
    if (ch[j]='+') or (ch[j]='-') then begin
       case ch[j] of
          '+':a[j]:=a[j]+a[j+1];
          '-':a[j]:=a[j]-a[j+1];
       end;
       i:=del(j,i);
       j:=j-1;
    end;
    j:=j+1;
end;
calc:=FloattoStr(a[1]);
end;

function scale(str,str1:string):string;
begin
insert(str1, str, l+1);
l:=l+length(str1);
{str:= convert(str);}
str:=str + ')';
l:=l+1;
scale:=str;
end;

procedure TForm1.BarctgClick(Sender: TObject);
begin
ch[i]:='a';
Primer.Text:=scale(Primer.Text,'arctg(');
end;

procedure TForm1.BCosClick(Sender: TObject);
begin
ch[i]:='c';
Primer.Text:=scale(Primer.Text,'cos(');
end;

procedure TForm1.BExpClick(Sender: TObject);
begin
ch[i]:='E';
Primer.Text:=scale(Primer.Text,'Exp(');
end;

procedure TForm1.BLnClick(Sender: TObject);
begin
ch[i]:='L';
Primer.Text:=scale(Primer.Text,'Ln(');
end;

procedure TForm1.BsClick(Sender: TObject);
var st:string;
begin
st:=Primer.Text;
Delete(st,length(st),1);
Primer.Text:=st;
end;

procedure TForm1.BSinClick(Sender: TObject);
var str:string;
begin
ch[i]:='s';
Primer.Text:=scale(Primer.Text,'sin(');
end;

procedure TForm1.Button0Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'0';
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+',';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+'9';
end;

procedure TForm1.CalculateClick(Sender: TObject);
begin
ocr(Primer.Text);
Primer.Text:=calc(Primer.Text);
l:=0;
i:=1;
end;

procedure TForm1.CEClick(Sender: TObject);
var st:string;
begin
st:=Primer.Text;
delete(st,l+1,length(st)-l);
Primer.Text:=st;
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
Primer.Text:='';
i:=1;
l:=0;
Primer.SetFocus;
end;

procedure TForm1.DelClick(Sender: TObject);
begin
ch[i]:='/';
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
i:=1;
l:=0;
end;

procedure TForm1.KorenClick(Sender: TObject);
begin
ch[i]:='√';
end;

procedure TForm1.MinusClick(Sender: TObject);
begin
ch[i]:='-';
end;

procedure TForm1.N11Click(Sender: TObject);
begin
Form1.Color:=clBtnFace
end;

procedure TForm1.N12Click(Sender: TObject);
begin
Form1.Color:=clRed;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
Form1.Color:=clBlue;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
Form1.Color:=clGreen;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
Form1.Color:=clBlack;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Clipboard.AsText:=Primer.Text;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
Primer.Text:=Primer.Text+Clipboard.AsText;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Primer.Text:='';
i:=1;
l:=0;
Primer.SetFocus;
end;

procedure TForm1.pi1Click(Sender: TObject);
begin
Primer.Text:=Primer.Text + FloattoStr(pi);
end;

procedure TForm1.PlusClick(Sender: TObject);
begin
ch[i]:='+';
end;

procedure TForm1.PrimerKeyPress(Sender: TObject; var Key: Char);
begin
case key of
'0'..'9',',','+','-','*','/',':','^':;
'V','v':;
#8:;
#46:begin
  Primer.Text:='';
  i:=1;
  l:=0;
end;
#27:Form1.Close;
'=',#13:begin
  ocr(Primer.Text);
  Primer.Text:=calc(Primer.Text);
end
Else Key :=Chr(0);
end;
end;

procedure TForm1.StepClick(Sender: TObject);
begin
ch[i]:='^';
end;

procedure TForm1.UmnClick(Sender: TObject);
begin
ch[i]:='*';
end;

end.
