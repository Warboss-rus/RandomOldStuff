unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    ax: TEdit;
    bx: TEdit;
    cx: TEdit;
    Calculate: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure CalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.CalculateClick(Sender: TObject);
var a,b,c:integer;
x1,x2,D:real;
begin
a:=strtoint(ax.Text);
b:=StrToInt(bx.Text);
c:=StrToInt(cx.Text);
if a<>0 then begin
D:=b*b-4*a*c;
x1:=(-b-sqrt(D))/(2*a);
x2:=(-b+sqrt(D))/(2*a);
Label1.Caption:='D=' + FloatToStrF (D, ffFixed, 4,2);
if d>=0 then Label1.Caption:=Label1.Caption + #13+#10+ 'x1=' + FloattostrF(x1,ffFixed,4,2);
if d>0 then Label1.Caption:=Label1.Caption + #13+#10+ 'x2=' + FloattostrF(x2,ffFixed,4,2);
end;
end;

end.
