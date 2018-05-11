unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    Select: TComboBox;
    a1: TEdit;
    b1: TEdit;
    c1: TEdit;
    Graph: TImage;
    Calculate: TButton;
    Result: TLabel;
    Mas: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    procedure CalculateClick(Sender: TObject);
    procedure a1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.a1KeyPress(Sender: TObject; var Key: Char);
begin
case key of
'0'..'9':;
#8:;
else key:=char(0);
end;
end;

procedure TForm2.CalculateClick(Sender: TObject);
var x1,x2:real;
a,b,c,D,m:integer;
x,y:real;
begin
Graph.Canvas.Brush.Color:=clWhite;
Graph.Canvas.Rectangle(0,0,131,131);
Graph.Canvas.Pen.Color:=clGray;
Graph.Canvas.MoveTo(0,65);
Graph.Canvas.LineTo(131,65);
Graph.Canvas.MoveTo(65,0);
Graph.Canvas.LineTo(65,131);
m:=strtoint(mas.Text);
case Select.ItemIndex of
0:begin
  a:=Strtoint(a1.Text);
  if a=0 then ShowMessage('a не может быть 0') else begin
  b:=Strtoint(b1.Text);
  c:=Strtoint(c1.Text);
  D:=b*b-4*a*c;
  Result.Caption:='D=' + InttoStr(d)+#13 + #10;
  if D>=0 then begin
    x1:=(-b-sqrt(D))/(2*a);
    Result.Caption:=Result.Caption + 'x1=' + FloattoStr(x1)+#13+#10;
    if d>0 then begin
      x2:=(-b+sqrt(d))/(2*a);
      Result.Caption:=Result.Caption + 'x2=' + FloattoStr(x2)+#13+#10;
    end;
  end else ShowMessage('Дискриминант отрицательный, корней нет');
   x:=-65;
   while x<65 do begin
     y:=-(a*x*x+b*x+c);
     if y = 0 then begin
        Graph.Canvas.Pixels[round(x*m+65),round(y*m+65)]:=clRed;
        Graph.Canvas.Pixels[round(x*m+66),round(y*m+65)]:=clRed;
        Graph.Canvas.Pixels[round(x*m+65),round(y*m+66)]:=clRed;
        Graph.Canvas.Pixels[round(x*m+64),round(y*m+65)]:=clRed;
        Graph.Canvas.Pixels[round(x*m+65),round(y*m+64)]:=clRed;
     end else Graph.Canvas.Pixels[round(x*m+65),round(y*m+65)]:=clBlack;
     x:=x+StrtoFloat(Edit1.Text);
   end;
   end;
end;
end;
end;

end.
