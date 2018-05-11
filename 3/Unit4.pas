unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Mask: TLabel;
    ListBox1: TListBox;
    a1: TEdit;
    b1: TEdit;
    c1: TEdit;
    Calculate: TButton;
    Result: TLabel;
    procedure CalculateClick(Sender: TObject);
    procedure MaskMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure a1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.a1KeyPress(Sender: TObject; var Key: Char);
begin
case Key of
'0'..'9': ;
#8 : ;
else key:=char(0)
end;
end;

procedure TForm4.CalculateClick(Sender: TObject);
var a,b,c,D:integer;
x1,x2:real;
begin
a:=Strtoint(a1.Text);
b:=Strtoint(b1.Text);
c:=Strtoint(c1.Text);
if a=0 then ShowMessage('a не может быть 0')
  else begin
    D:=b*b-4*a*c;
    Result.Caption:='D='+ InttoStr(D) + #13;
    if D<0 then ShowMessage('Нет корней, т.к. дискриминант отрицательный')
      else begin
        x1:=(-b-sqrt(D))/(2*a);
        x2:=(-b+sqrt(d))/(2*a);
        Result.Caption:=Result.Caption + 'x1=' + FloattoStr(x1) + #13;
        if D>0 then Result.Caption:=Result.Caption + 'x2=' + FloattoSTR(x2);
      end;
  end;
end;

procedure TForm4.MaskMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
case Listbox1.ItemIndex of
0: Mask.Caption:='ax²+bx+c=0';
end;
end;

end.
