unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    BGen: TButton;
    BLoad: TButton;
    BGO: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    BSave: TButton;
    RGMode: TRadioGroup;
    StringGrid1: TStringGrid;
    procedure BGenClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure BLoadClick(Sender: TObject);
    procedure RGModeClick(Sender: TObject);
    procedure BGOClick(Sender: TObject);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n,m: longint;
  a,c: array[1..100,1..100] of integer;
  z:array[1..100,1..100] of string;

implementation

{$R *.dfm}

procedure go(x,y:integer;s:string);
var
i,j: integer;
flag:boolean;
ch:integer;
begin
flag:=true;
i:=x;
j:=y;
while flag=true do begin
   if s='DR' then ch:=1;
if s='DL' then ch:=2;
if s='UR' then ch:=3;
if s='UL' then ch:=4;
i:=x;
j:=y;
   case ch of
   1:begin
        if (i=m) and (j=n) then flag:=false;
       if (i=m) and (j<n) then begin
           s:='UR';
           j:=j+1;
       end;
       if (j=n) and (i<m) then begin
          i:=i+1;
          s:='DL';
       end;

       if (i<m) and (j<n) then begin
           i:=i+1;
           j:=j+1;
       end;
   end;
  2:begin
       if (i=m) and (j=1) then flag:=false;
       if (i=m) and (j>1) then begin
           s:='UL';
           j:=j-1;
       end;
       if (j=1) and (i<m) then begin
          i:=i+1;
          s:='DR';
       end;

       if (i<m) and (j>1) then begin
           i:=i+1;
           j:=j-1;
       end;
       end;
   3:begin
          if (i=1) and (j=n) then flag:=false;
       if (i=1) and (j<n) then begin
           s:='DR';
           j:=j+1;
       end;
       if (j=n) and (i>1) then begin
          i:=i-1;
          s:='UL';
       end;

       if (i>1) and (j<n) then begin
           i:=i-1;
           j:=j+1;
       end;
       end;
    4:begin
       if (i=1) and (j=1) then flag:=false;
       if (i=1) and (j>1) then begin
           s:='DL';
           j:=j-1;
       end;
       if (j=1) and (i>1) then begin
          i:=i-1;
          s:='UR';
       end;
       if (i>1) and (j>1) then begin
           i:=i-1;
           j:=j-1;
       end;
       end;
  end;
 c[i,j]:=c[x,y]+a[i,j];
 if (z[i,j]='') and (flag=true) then z[i,j]:=s else begin
 flag:=false;
 {MessageDlg('Зациклились...',mtError,[mbOK],0)};
 end;
 x:=i;
 y:=j;
end;
end;

procedure clearC;
var i,j:integer;
begin
for i:=1 to m do
   for j:=1 to n do
      c[i,j]:=0;
C[1,N]:=A[1,n];
c[m,1]:=a[m,1];
c[m,n]:=a[m,n];
c[1,1]:=a[1,1];
end;

procedure TForm1.BGenClick(Sender: TObject);
var i,j:integer;
F: textfile;
begin
m:=strtoint(Edit1.Text);
n:=strtoint(Edit2.Text);
randomize;
for i:=1 to m do
  for j:=1 to n do
     a[i,j]:=100-random(200);
assignfile(F,'input.txt');
rewrite(F);
writeln(F,m,' ',n);
for i:=1 to m do begin
    for j:=1 to n do
      write(f,a[i,j],' ');
    writeln(f);
end;
closefile(f);
end;

procedure TForm1.BGOClick(Sender: TObject);
type dd=record
    x,y,sum: integer;
    s: string;
    end;
var res: array[1..4] of dd;
i,j,max: longint;
f: textfile;
begin
case RGMode.ItemIndex of
  0:begin
     //Находим наилучшую клетку, попадающую в верхний правый угол.
     clearC;
     go(1,n,'DL');
     res[1].sum:=0;
     for i:=1 to m do
       for j:=1 to n do
         if c[i,j]>res[1].sum then begin
            res[1].sum:=c[i,j];
            res[1].x:=i;
            res[1].y:=j;
            res[1].s:=z[i,j];
        end;
  clearC;
     go(1,n,'DL');
     res[1].sum:=0;
     for i:=1 to m do
       for j:=1 to n do
         if c[i,j]>res[1].sum then begin
            res[1].sum:=c[i,j];
            res[1].x:=i;
            res[1].y:=j;
            res[1].s:=z[i,j];
        end;
  Label1.Caption:=inttostr(res[1].sum);
  end;
  1:begin

  end;
  2:begin

  end;
end;
end;

procedure TForm1.BLoadClick(Sender: TObject);
var f:Textfile;
i,j:integer;
begin
assignfile(f,'input.txt');
reset(f);
readln(f,m,n);
 for i:=1 to m do
  begin
  for j:=1 to n do
  read(f,a[i,j]);
  readln(f);
  end;
  closefile(f);
if RGMode.ItemIndex>0 then begin
StringGrid1.RowCount:=n;
StringGrid1.ColCount:=m;
for i := 0 to m-1 do
   for j := 0 to n-1 do
      StringGrid1.Cells[i,j]:=inttostr(a[i+1,j+1]);
end;
end;

procedure TForm1.BSaveClick(Sender: TObject);
var F:Textfile;
begin
assignfile(f,'output.txt');
rewrite(f);
write(f,Label1.caption);
end;

procedure TForm1.RGModeClick(Sender: TObject);
begin
case RGMode.ItemIndex of
0:if Form1.Height>172 then begin
    Form1.Height:=172;
    StringGrid1.Visible:=false;
end;
1:if Form1.Height=172 then begin
    Form1.Height:=Form1.Height+StringGrid1.Height;
    StringGrid1.Visible:=true;
end;
2:if Form1.Height=172 then begin
    Form1.Height:=Form1.Height+StringGrid1.Height;
    StringGrid1.Visible:=true;
end;
end;
end;

procedure TForm1.StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
StringGrid1.Brush.Color:=clGreen;
if ((Acol=0) and (ARow=0)) or ((Acol=0) and (Arow=n-1)) or ((Acol=m-1) and (Arow=0)) or ((Acol=m-1)and(Arow=n-1))then
   StringGrid1.Canvas.FillRect(Rect);
end;

end.
