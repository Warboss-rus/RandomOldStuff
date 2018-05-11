unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ComboBox1: TComboBox;
    EA: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EB: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EC: TEdit;
    ED: TEdit;
    BCalculate: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Graph: TPaintBox;
    TBM: TTrackBar;
    TBZ: TTrackBar;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    LM: TLabel;
    LZ: TLabel;
    Label10: TLabel;
    EGrid: TEdit;
    UpDown1: TUpDown;
    CBNum: TCheckBox;
    procedure ComboBox1Select(Sender: TObject);
    procedure ESXKeyPress(Sender: TObject; var Key: Char);
    procedure EAKeyPress(Sender: TObject; var Key: Char);
    procedure BCalculateClick(Sender: TObject);
    procedure EMKeyPress(Sender: TObject; var Key: Char);
    procedure EZKeyPress(Sender: TObject; var Key: Char);
    procedure TBMChange(Sender: TObject);
    procedure TBZChange(Sender: TObject);
    procedure GraphMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GraphMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GraphMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure EGridChange(Sender: TObject);
      var
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  SX,SY,TX,TY,EG,M,i:integer;

implementation

{$R *.dfm}
procedure TForm1.BCalculateClick(Sender: TObject);
var
a,b,c,d,x,y,Z:real;
begin
Graph.Canvas.Brush.Color:=clWhite;
Graph.Canvas.Rectangle(0,0,Graph.Width,Graph.Height);
M:=TBM.Position;
if EG<>0 then begin
  Graph.Canvas.Pen.Color:=clSilver;
   for i:=0 to (round(Graph.Width/2)) do begin
       Graph.Canvas.MoveTo(round(i*EG*M+Graph.Width/2)-SX,0);
       Graph.Canvas.Lineto(round(i*EG*M+Graph.Width/2)-SX,Graph.Height);
       Graph.Canvas.MoveTo(round(-i*EG*M+Graph.Width/2)-SX,0);
       Graph.Canvas.Lineto(round(-i*EG*M+Graph.Width/2)-SX,Graph.Height);
   end;
   for i:=0 to (round(Graph.Height/2)) do begin
       Graph.Canvas.MoveTo(0,round(i*EG*m+(Graph.Height/2)-SY));
       Graph.Canvas.Lineto(Graph.Width,round(i*EG*m+(Graph.Height/2)-SY));
       Graph.Canvas.MoveTo(0,round(-i*EG*m+Graph.Height/2-SY));
       Graph.Canvas.Lineto(Graph.Width,round(-i*EG*m+Graph.Height/2-SY));
   end;
end;
Graph.Canvas.Pen.Color:=clGray;
Graph.Canvas.Pen.Width:=2;
Graph.Canvas.MoveTo(0,round(Graph.Height/2)-SY);
Graph.Canvas.LineTo(Graph.Width,round(Graph.Height/2)-SY);
Graph.Canvas.MoveTo(round(Graph.Width/2)-SX,0);
Graph.Canvas.LineTo(round(Graph.Width/2)-SX,Graph.Height);
Graph.Canvas.Pen.Width:=1;
if CBNum.Checked and (EG>0) then begin
    x:=0;
    while x<Graph.Width/2+SX do begin
      Graph.Canvas.TextOut(round(x+Graph.Width/2-5-SX),2,inttostr(round(x/m)));
      Graph.Canvas.TextOut(round(-x+Graph.Width/2-5-SX),2,inttostr(round(-x/m)));
      if EG <=20 then x:=x+20*M;
      if EG>20 then x:=x+EG*M;
    end;
    x:=0;
    while x<Graph.Height/2+SY do begin
      Graph.Canvas.TextOut(5,round(x+Graph.Height/2-5-SY),inttostr(round(x/m)));
      Graph.Canvas.TextOut(5,round(-x+Graph.Height/2-5-SY),inttostr(round(-x/m)));
      if EG <=20 then x:=x+20*M;
      if EG>20 then x:=x+EG*M;
    end;
end;
Z:=1/TBZ.Position;
if EA.Text='' then EA.Text:='0';
a:=strtofloat(EA.text);
if EB.Text='' then EB.Text:='0';
b:=strtofloat(EB.text);
if EC.Text='' then EC.Text:='0';
c:=strtofloat(EC.text);
if ED.Text='' then ED.Text:='0';
d:=strtofloat(ED.text);
Graph.Canvas.Pen.Color:=clBlack;
case ComboBox1.ItemIndex of
  0:begin
    x:=0-round(Graph.Width/2)+SX;
    while x<round(Graph.Width/2)+SX do begin
       y:=-(a*x*x+b*x+c);
       if x=0-round(Graph.Width/2)+SX then Graph.Canvas.MoveTo((round(x*m+(Graph.Width/2)-SX)),round(y*m+(Graph.Height/2)-SY))
       else
       Graph.Canvas.LineTo(round(x*m+(Graph.Width/2)-SX),round(y*m+(Graph.Height/2)-SY));
       x:=x+Z;
    end;
  end;
  1:begin
    x:=0-round(Graph.Width/2)+SX;
    while x<round(Graph.Width/2)+SX do begin
       y:=-(b*sin(a*x+c)-d);
       if x=0-round(Graph.Width/2)+SX then Graph.Canvas.MoveTo((round(x*m+(Graph.Width/2)-SX)),round(y*m+(Graph.Height/2)-SY))
       else
       Graph.Canvas.LineTo(round(x*m+(Graph.Width/2)-SX),round(y*m+(Graph.Height/2)-SY));
       x:=x+Z;
    end;
  end;
  2:begin
    x:=0-round(Graph.Width/2)+SX;
    while x<round(Graph.Width/2)+SX do begin
       y:=-(b*cos(a*x+c)-d);
if x=0-round(Graph.Width/2)+SX then Graph.Canvas.MoveTo((round(x*m+(Graph.Width/2)-SX)),round(y*m+(Graph.Height/2)-SY))
       else
       Graph.Canvas.LineTo(round(x*m+(Graph.Width/2)-SX),round(y*m+(Graph.Height/2)-SY));
       x:=x+Z;
    end;
  end;
  3:begin
    x:=0-round(Graph.Width/2)+SX;
    while x<round(Graph.Width/2)+SX do begin
       y:=-(b*arctan(a*x+c)-d);
if x=0-round(Graph.Width/2)+SX then Graph.Canvas.MoveTo((round(x*m+(Graph.Width/2)-SX)),round(y*m+(Graph.Height/2)-SY))
       else
       Graph.Canvas.LineTo(round(x*m+(Graph.Width/2)-SX),round(y*m+(Graph.Height/2)-SY));
       x:=x+Z;
    end;
  end;
end;
end;

procedure TForm1.ESXKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
     '0'..'9','-':;
     #8:;
     else key:=char(0);
 end;
end;

procedure TForm1.EZKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
   '0'..'9':;
   ',':;
   #8:;
   else key:=char(0);
end;
end;

procedure TForm1.GraphMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
TX:=X;
TY:=Y;
end;

procedure TForm1.GraphMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
if M<>0 then Graph.Hint:=inttostr(round((-Graph.Width/2 + x + SX)/M)) + '; ' + inttostr(round((Graph.Height/2 - y-SY)/M));
end;

procedure TForm1.GraphMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
SX:=SX+(TX-X);
SY:=SY+(TY-Y);
BCalculateClick(Graph);
end;

procedure TForm1.TBMChange(Sender: TObject);
begin
LM.Caption:=inttostr(TBM.Position);
BCalculateClick(TBM);
end;

procedure TForm1.TBZChange(Sender: TObject);
begin
LZ.Caption:=floattostrF(1/TBZ.Position,fffixed,1,3);
BCalculateClick(TBM);
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
EA.Enabled:=false;
EB.Enabled:=false;
EC.Enabled:=false;
ED.Enabled:=false;
case ComboBox1.ItemIndex of
  0:begin
    EA.Enabled:=true;
    EB.Enabled:=true;
    EC.Enabled:=true;
  end;
  1:begin
    EA.Enabled:=true;
    EB.Enabled:=true;
    EC.Enabled:=true;
    ED.Enabled:=true;
  end;
  2:begin
    EA.Enabled:=true;
    EB.Enabled:=true;
    EC.Enabled:=true;
    ED.Enabled:=true;
  end;
  3:begin
    EA.Enabled:=true;
    EB.Enabled:=true;
    EC.Enabled:=true;
    ED.Enabled:=true;
  end;
  4:begin
    EA.Enabled:=true;
    EB.Enabled:=true;
    EC.Enabled:=true;
    ED.Enabled:=true;
  end;
end;
end;


procedure TForm1.EAKeyPress(Sender: TObject; var Key: Char);
begin
case key of
   '0'..'9':;
   ',','-':;
   #8:;
   else key:=char(0);
end;
end;

procedure TForm1.EGridChange(Sender: TObject);
begin
EG:=strtoint(EGrid.Text);
BCalculateClick(Egrid);
end;

procedure TForm1.EMKeyPress(Sender: TObject; var Key: Char);
begin
case key of
   '0'..'9':;
   #8:;
   else key:=char(0);
end;
end;

end.
