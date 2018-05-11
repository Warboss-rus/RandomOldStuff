unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    E1A: TEdit;
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    E1B: TEdit;
    E1C: TEdit;
    ComboBox4: TComboBox;
    Label4: TLabel;
    ComboBox5: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    E1D: TEdit;
    Label17: TLabel;
    E1E: TEdit;
    CBType1: TComboBox;
    BPrev: TButton;
    BNext: TButton;
    E2A: TEdit;
    Label18: TLabel;
    E2B: TEdit;
    Label19: TLabel;
    E2C: TEdit;
    Label20: TLabel;
    E2D: TEdit;
    Label21: TLabel;
    E2E: TEdit;
    CBType2: TComboBox;
    E3A: TEdit;
    Label22: TLabel;
    E3B: TEdit;
    Label23: TLabel;
    E3C: TEdit;
    Label24: TLabel;
    E3D: TEdit;
    Label25: TLabel;
    E3E: TEdit;
    CBType3: TComboBox;
    E4A: TEdit;
    Label26: TLabel;
    E4B: TEdit;
    Label27: TLabel;
    E4C: TEdit;
    Label28: TLabel;
    E4D: TEdit;
    Label29: TLabel;
    E4E: TEdit;
    CBType4: TComboBox;
    E5A: TEdit;
    Label30: TLabel;
    E5B: TEdit;
    Label31: TLabel;
    E5C: TEdit;
    Label32: TLabel;
    E5D: TEdit;
    Label33: TLabel;
    E5E: TEdit;
    CBType5: TComboBox;
    Panel2: TPanel;
    Label35: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    procedure ESXKeyPress(Sender: TObject; var Key: Char);
    procedure E1AKeyPress(Sender: TObject; var Key: Char);
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
    procedure Clear(Sender: TObject);
    procedure Draw(Sender: TObject);
    procedure Paint(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BNextClick(Sender: TObject);
    procedure BPrevClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  SX,SY,TX,TY,EG,M,l,n:integer;
  z:real;
  go:boolean;
  a:array[1..100,0..6] of real;

implementation

{$R *.dfm}

Procedure TForm1.Clear (Sender: TObject);
var x,i:integer;
begin
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
      if EG*M <=20 then x:=x+20*M;
      if EG*M>20 then x:=x+EG*M;
    end;
    x:=0;
    while x<Graph.Height/2+SY do begin
      Graph.Canvas.TextOut(5,round(x+Graph.Height/2-5-SY),inttostr(round(x/m)));
      Graph.Canvas.TextOut(5,round(-x+Graph.Height/2-5-SY),inttostr(round(-x/m)));
      if EG*M <=20 then x:=x+20*M;
      if EG*M>20 then x:=x+EG*M;
    end;
end;
end;

procedure TForm1.Draw(Sender: TObject);
var x,y:real;
j:integer;
flag,first:boolean;
begin
M:=TBM.Position;
Graph.Canvas.Pen.Color:=clBlack;
for j:=1 to n do
  if a[j,0]<>-1 then begin
  first:=true;
  x:=0-round(Graph.Width/2)+SX;
  if (a[j,0]=7) or (a[j,0]=8) or (a[j,0]=9) then begin
     Graph.Canvas.MoveTo(round(a[j,5]*m+(Graph.Width/2)-SX),0);
     Graph.Canvas.LineTo(round(a[j,5]*m+(Graph.Width/2)-SX),Graph.Height);
  end else
   while x<round(Graph.Width/2)+SX do begin
       y:=-(a[j,1]*x*x*x*x+a[j,2]*x*x*x+a[j,3]*x*x+a[j,4]*x+a[j,5]);
       if ((a[j,0]=4) or (a[j,0]=5) or (a[j,0]=6)) and (y<0) then y:=-sqrt(-y);
       flag:=true;
       if ((a[j,0]=4) or (a[j,0]=5) or (a[j,0]=6)) and (y>0) then flag:=false;
       case round(a[j,6]) of
          1:if (abs(y*m)>0.0001) then y:=1/y else flag:=false;
          2:if y<=0 then y:=-sqrt(-y) else flag:=false;
       end;
       if y<-10000000 then flag:=false;
       if flag=true then
       if first=true then begin
        Graph.Canvas.MoveTo((round(x*m+(Graph.Width/2)-SX)),round(y*m+(Graph.Height/2)-SY));
        first:=false;
       end else
       Graph.Canvas.LineTo(round(x*m+(Graph.Width/2)-SX),round(y*m+(Graph.Height/2)-SY));
       x:=x+z;
       if ((abs(x)<0.0001) and (round(a[j,0])=1)) then first:=true;
    end;
  if (a[j,0]=4) or (a[j,0]=5) or (a[j,0]=6) then begin
    x:=round(Graph.Width/2)+SX-z;
      while x>0-round(Graph.Width/2)+SX do begin
        flag:=true;
        y:=-(a[j,1]*x*x*x*x+a[j,2]*x*x*x+a[j,3]*x*x+a[j,4]*x+a[j,5]);
        case round(a[j,6]) of
          1:if not(round(y*m)=0) then y:=1/y else flag:=false;
          2:if y<=0 then y:=-sqrt(-y) else flag:=false;
       end;
        if y<0 then y:=sqrt(-y) else flag:=false;
        if flag=true then Graph.Canvas.LineTo(round(x*m+(Graph.Width/2)-SX),round(y*m+(Graph.Height/2)-SY));
        x:=x-z;
      end;
    end;
  end;
end;

procedure TForm1.paint(Sender: TObject);
var t:real;
j,x,y,k:integer;
xx:real;
flag:boolean;
c1,c2,c4,c5,c6:TColor;
begin
for x:=-round(Graph.Width/(2)-SX) to round(Graph.Width/(2)+SX) do
  for y:=-round(Graph.Height/(2)-SY) to round(Graph.Height/(2)+SY) do begin
    for k:=0 to round(n/5-1) do begin
    flag:=true;
    for j:= k*5+1 to k*5+5 do
      if a[j,0]<>-1 then begin
      xx:=x/m;
      t:=-(a[j,1]*xx*xx*xx*xx+a[j,2]*xx*xx*xx+a[j,3]*xx*xx+a[j,4]*xx+a[j,5]);
      case round(a[j,6]) of
          1:if abs(t)>0.00000001 then t:=1/t
                                  else flag:=false;
          2:if t<=0 then t:=-sqrt(-t)
                                  else flag:=false;
       end;
       case round(a[j,0]) of
          0,4,7:flag:=false;
          1:if y/m>t then flag:=false;
          2:if y/m<t then flag:=false;
          5:if (-(y/m)*(y/m)>t) then flag:=false;
          6:if (-(y/m)*(y/m)<t) then flag:=false;
          8:if xx<a[j,5] then flag:=false;
          9:if xx>a[j,5] then flag:=false;
        end;
       if (round(a[j,6])=1) and (x=0) then flag:=false;
      end;
      if (flag=true) then begin
      case k+1 of
          1:c2:=clRed;
          2:c2:=clBlue;
          3:c2:=clGreen;
          4:c2:=clAqua;
          5:c2:=clFuchsia;
          6:c2:=clLime;
          7:c2:=clMaroon;
          8:c2:=clYellow;
          9:c2:=clPurple;
          10:c2:=clOlive;
          11:c2:=clNavy;
          12:c2:=clTeal;
      end;
      c1:=graph.Canvas.Pixels[round(x+(Graph.Width/2)-SX),round(y+(Graph.Height/2)-SY)];
      c4:=(c1 and $000000FF + c2 and $000000FF) div 2;
      c5:=(((($0000FF00 and c1) + ($0000FF00 and c2)) div $100) div 2)*$100 ;
      c6:=(((($00FF0000 and c1)+($00FF0000 and c2)) div $10000) div 2)*$10000;
      graph.Canvas.Pixels[round(x+(Graph.Width/2)-SX),round(y+(Graph.Height/2)-SY)]:=c4+c5+c6;
      end;
    end;
  end;
end;

procedure TForm1.BCalculateClick(Sender: TObject);
begin
Form1.Clear(BCalculate);
Graph.Canvas.Brush.Color:=clWhite;
Graph.Canvas.Rectangle(0,0,Graph.Width,Graph.Height);
Z:=1/TBZ.Position;
a[l+1,0]:=ComboBox1.ItemIndex;
if E1A.Text='' then E1A.Text:='0';
A[l+1,1]:=strtofloat(E1A.text);
if E1B.Text='' then E1B.Text:='0';
A[l+1,2]:=strtofloat(E1B.text);
if E1C.Text='' then E1C.Text:='0';
A[l+1,3]:=strtofloat(E1C.text);
if E1D.Text='' then E1D.Text:='0';
A[l+1,4]:=strtofloat(E1D.text);
if E1E.Text='' then E1E.Text:='0';
A[l+1,5]:=strtofloat(E1E.text);
a[l+1,6]:=CBType1.ItemIndex;
if ComboBox2.ItemIndex<>3 then begin
  a[l+2,0]:=ComboBox2.ItemIndex;
  if E2A.Text='' then E2A.Text:='0';
  A[l+2,1]:=strtofloat(E2A.text);
  if E2B.Text='' then E2B.Text:='0';
  A[l+2,2]:=strtofloat(E2B.text);
  if E2C.Text='' then E2C.Text:='0';
  A[l+2,3]:=strtofloat(E2C.text);
  if E2D.Text='' then E2D.Text:='0';
  A[l+2,4]:=strtofloat(E2D.text);
  if E2E.Text='' then E2E.Text:='0';
  A[l+2,5]:=strtofloat(E2E.text);
  a[l+2,6]:=CBType2.ItemIndex;
  end else a[l+2,0]:=-1;
if ComboBox3.ItemIndex<>3 then begin
  a[l+3,0]:=ComboBox3.ItemIndex;
  if E3A.Text='' then E3A.Text:='0';
  A[l+3,1]:=strtofloat(E3A.text);
  if E3B.Text='' then E3B.Text:='0';
  A[l+3,2]:=strtofloat(E3B.text);
  if E3C.Text='' then E3C.Text:='0';
  A[l+3,3]:=strtofloat(E3C.text);
  if E3D.Text='' then E3D.Text:='0';
  A[l+3,4]:=strtofloat(E3D.text);
  if E3E.Text='' then E3E.Text:='0';
  A[l+3,5]:=strtofloat(E3E.text);
  a[l+3,6]:=CBType3.ItemIndex;
end else a[l+3,0]:=-1;
if ComboBox4.ItemIndex<>3 then begin
  a[l+4,0]:=ComboBox4.ItemIndex;
  if E4A.Text='' then E4A.Text:='0';
  A[l+4,1]:=strtofloat(E4A.text);
  if E4B.Text='' then E4B.Text:='0';
  A[l+4,2]:=strtofloat(E4B.text);
  if E4C.Text='' then E4C.Text:='0';
  A[l+4,3]:=strtofloat(E4C.text);
  if E4D.Text='' then E4D.Text:='0';
  A[l+4,4]:=strtofloat(E4D.text);
  if E4E.Text='' then E4E.Text:='0';
  A[l+4,5]:=strtofloat(E4E.text);
  a[l+4,6]:=CBType4.ItemIndex;
end else a[l+4,0]:=-1;
if ComboBox5.ItemIndex<>3 then begin
  a[l+5,0]:=ComboBox5.ItemIndex;
  if E5A.Text='' then E5A.Text:='0';
  A[l+5,1]:=strtofloat(E5A.text);
  if E5B.Text='' then E5B.Text:='0';
  A[l+5,2]:=strtofloat(E5B.text);
  if E5C.Text='' then E5C.Text:='0';
  A[l+5,3]:=strtofloat(E5C.text);
  if E5D.Text='' then E5D.Text:='0';
  A[l+5,4]:=strtofloat(E5D.text);
  if E5E.Text='' then E5E.Text:='0';
  A[l+5,5]:=strtofloat(E5E.text);
  a[l+5,6]:=CBType3.ItemIndex;
end else a[l+5,0]:=-1;
if Sender=BCalculate then go:=true;
if go=true then begin
Draw(BCalculate);
paint(BCalculate);
end;
Form1.Clear(BCalculate);
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

procedure TForm1.FormActivate(Sender: TObject);
begin
go:=false;
l:=0;
n:=5;
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
Label36.Caption:=Graph.Hint;
end;

procedure TForm1.GraphMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
SX:=SX+(TX-X);
SY:=SY+(TY-Y);
BCalculateClick(Graph);
end;

procedure TForm1.BNextClick(Sender: TObject);
begin
if l<100 then l:=l+5;
if l=n then n:=n+5;
Label35.Caption:=inttostr(round(l/5)+1);
Label38.Caption:=inttostr(round(n/5));
ComboBox1.ItemIndex:=round(a[l+1,0]);
E1A.text:=floattostr(A[l+1,1]);
E1B.text:=floattostr(A[l+1,2]);
E1C.text:=floattostr(A[l+1,3]);
E1D.text:=floattostr(A[l+1,4]);
E1E.text:=floattostr(A[l+1,5]);
CBType1.ItemIndex:=round(a[l+1,6]);
if a[l+2,0]=-1 then ComboBox2.ItemIndex:=3;
E2A.text:=floattostr(A[l+2,1]);
E2B.text:=floattostr(A[l+2,2]);
E2C.text:=floattostr(A[l+2,3]);
E2D.text:=floattostr(A[l+2,4]);
E2E.text:=floattostr(A[l+2,5]);
CBType2.ItemIndex:=round(a[l+2,6]);
if a[l+3,0]=-1 then ComboBox3.ItemIndex:=3;
E3A.text:=floattostr(A[l+3,1]);
E3B.text:=floattostr(A[l+3,2]);
E3C.text:=floattostr(A[l+3,3]);
E3D.text:=floattostr(A[l+3,4]);
E3E.text:=floattostr(A[l+3,5]);
CBType3.ItemIndex:=round(a[l+3,6]);
if a[l+4,0]=-1 then ComboBox4.ItemIndex:=3;
E4A.text:=floattostr(A[l+4,1]);
E4B.text:=floattostr(A[l+4,2]);
E4C.text:=floattostr(A[l+4,3]);
E4D.text:=floattostr(A[l+4,4]);
E4E.text:=floattostr(A[l+4,5]);
CBType4.ItemIndex:=round(a[l+4,6]);
if a[l+5,0]=-1 then ComboBox5.ItemIndex:=3;
E5A.text:=floattostr(A[l+5,1]);
E5B.text:=floattostr(A[l+5,2]);
E5C.text:=floattostr(A[l+5,3]);
E5D.text:=floattostr(A[l+5,4]);
E5E.text:=floattostr(A[l+5,5]);
CBType5.ItemIndex:=round(a[l+5,6]);
end;

procedure TForm1.BPrevClick(Sender: TObject);
begin
if l>=5 then l:=l-5;
Label35.Caption:=inttostr(round(l/5)+1);
Label38.Caption:=inttostr(round(n/5));
ComboBox1.ItemIndex:=round(a[l+1,0]);
E1A.text:=floattostr(A[l+1,1]);
E1B.text:=floattostr(A[l+1,2]);
E1C.text:=floattostr(A[l+1,3]);
E1D.text:=floattostr(A[l+1,4]);
E1E.text:=floattostr(A[l+1,5]);
CBType1.ItemIndex:=round(a[l+1,6]);
if a[l+2,0]=-1 then ComboBox2.ItemIndex:=3;
E2A.text:=floattostr(A[l+2,1]);
E2B.text:=floattostr(A[l+2,2]);
E2C.text:=floattostr(A[l+2,3]);
E2D.text:=floattostr(A[l+2,4]);
E2E.text:=floattostr(A[l+2,5]);
CBType2.ItemIndex:=round(a[l+2,6]);
if a[l+3,0]=-1 then ComboBox3.ItemIndex:=3;
E3A.text:=floattostr(A[l+3,1]);
E3B.text:=floattostr(A[l+3,2]);
E3C.text:=floattostr(A[l+3,3]);
E3D.text:=floattostr(A[l+3,4]);
E3E.text:=floattostr(A[l+3,5]);
CBType3.ItemIndex:=round(a[l+3,6]);
if a[l+4,0]=-1 then ComboBox4.ItemIndex:=3;
E4A.text:=floattostr(A[l+4,1]);
E4B.text:=floattostr(A[l+4,2]);
E4C.text:=floattostr(A[l+4,3]);
E4D.text:=floattostr(A[l+4,4]);
E4E.text:=floattostr(A[l+4,5]);
CBType4.ItemIndex:=round(a[l+4,6]);
if a[l+5,0]=-1 then ComboBox5.ItemIndex:=3;
E5A.text:=floattostr(A[l+5,1]);
E5B.text:=floattostr(A[l+5,2]);
E5C.text:=floattostr(A[l+5,3]);
E5D.text:=floattostr(A[l+5,4]);
E5E.text:=floattostr(A[l+5,5]);
CBType5.ItemIndex:=round(a[l+5,6]);
end;

procedure TForm1.TBMChange(Sender: TObject);
begin
LM.Caption:=inttostr(TBM.Position);
end;

procedure TForm1.TBZChange(Sender: TObject);
begin
LZ.Caption:=floattostrF(1/TBZ.Position,fffixed,1,3);
end;


procedure TForm1.E1AKeyPress(Sender: TObject; var Key: Char);
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
