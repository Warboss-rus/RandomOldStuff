unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    s1: TEdit;
    s2: TEdit;
    Result: TEdit;
    Calculate: TButton;
    Actions: TListBox;
    x2: TButton;
    About: TButton;
    Help: TButton;
    procedure CalculateClick(Sender: TObject);
    procedure S1KeyPress(Sender: TObject; var Key: Char);
    procedure x2Click(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
    procedure s2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit5;

{$R *.dfm}
procedure TForm1.AboutClick(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.CalculateClick(Sender: TObject);
var a,b,S:real;
i:integer;
begin
a:=StrtoFloat(s1.Text);
b:=StrtoFloat(s2.Text);
case Actions.Itemindex of
    0:S:=a+b;
    1:S:=a-b;
    2:S:=a*b;
    3:begin
      if b<>0 then
      S:=a/b
      else S:=0;
    end;
    4:begin
      S:=a;
      for i := 2 to trunc(b) do
          S:=s*a;
    end;
    5:begin
       if b<2 then b:=2;
       S:=exp((1/b)*ln(a));
    end;
    6: S:=sin(a);
    7: S:=cos(a);
    8: S:=Ln(a);
    9: S:=Exp(a);
end;
Result.Text:=FloattoStr(s);
end;
procedure TForm1.HelpClick(Sender: TObject);
begin
Form5.Show
end;

procedure TForm1.S1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9': ;
',':;
#8 : ;
'p','P','ç','Ç':begin
S1.Text :=FloattoStr(pi);
Key :=Chr(0);
end;
'+': begin
Actions.ItemIndex:=0;
Key :=Chr(0);
S2.SetFocus;
end;
'-': if (s1.Text<>'0') and (s1.Text<>'') then begin
               Actions.ItemIndex:=1;
               Key :=Chr(0);
               S2.SetFocus;
            end;
'*' : begin
Actions.ItemIndex:=2;
Key :=Chr(0);
S2.SetFocus;
end;
'/': begin
Actions.ItemIndex:=3;
Key :=Chr(0);
S2.SetFocus;
end;
'^': begin
Actions.ItemIndex:=4;
Key :=Chr(0);
S2.SetFocus;
end;
'V','v','ì','Ì': begin
Actions.ItemIndex:=5;
Key :=Chr(0);
S2.SetFocus;
end;
's','S','û','Û':begin
Actions.ItemIndex:=6;
Key :=Chr(0);
Calculate.SetFocus;
end;
'c','C','ñ','Ñ':begin
Actions.ItemIndex:=7;
Key :=Chr(0);
Calculate.SetFocus;
end;
'l','L','Ä','ä':begin
Actions.ItemIndex:=8;
Key :=Chr(0);
Calculate.SetFocus;
end;
'e','E','ó','Ó':begin
Actions.ItemIndex:=9;
Key :=Chr(0);
Calculate.SetFocus;
end;
#13 : Calculate.SetFocus;
else Key :=Chr(0);
end;
end;

procedure TForm1.s2KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9': ;
',':;
'p':begin
S1.Text :=FloattoStr(pi);
Key :=Chr(0);
end;
'-':if (s2.Text<>'0') and (s2.Text<>'') then Key :=Chr(0);
#8 : ;
#13 : Calculate.SetFocus;
else Key :=Chr(0);
end;
end;

procedure TForm1.x2Click(Sender: TObject);
begin
Form4.Show
end;

end.
