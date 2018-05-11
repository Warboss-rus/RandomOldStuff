unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    BCalculate: TButton;
    BClear: TButton;
    CBCount: TComboBox;
    CBdigital: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure CBCountChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BCalculateClick(Sender: TObject);
    procedure BClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BCalculateClick(Sender: TObject);
var i:integer;
S:real;
begin
S:=0;
for i:=1 to StringGrid1.RowCount-1 do
    S:=s+strtofloat(StringGrid1.Cells[0,i]);
StringGrid1.Cells[1,1]:=floattostr(S/(StringGrid1.RowCount-1));
for i:=1 to StringGrid1.RowCount-1 do
    StringGrid1.Cells[2,i]:=floattostr(strtofloat(StringGrid1.Cells[1,1])-strtofloat(StringGrid1.Cells[0,i]));
for i:=1 to StringGrid1.RowCount-1 do
    StringGrid1.Cells[3,i]:=floattostr(sqr(strtofloat(StringGrid1.Cells[2,i])));
S:=0;
for i:=1 to StringGrid1.RowCount-1 do
    S:=S+strtofloat(StringGrid1.Cells[3,i]);
StringGrid1.Cells[4,1]:=floattostr(sqrt(S/((StringGrid1.RowCount-1)*(StringGrid1.RowCount-2))));
case CBCount.ItemIndex of
    0:StringGrid1.Cells[5,1]:='12'+DecimalSeparator+'8';
    1:StringGrid1.Cells[5,1]:='4'+DecimalSeparator+'3';
    2:StringGrid1.Cells[5,1]:='2'+DecimalSeparator+'8';
    3:StringGrid1.Cells[5,1]:='2'+DecimalSeparator+'4';
    4:StringGrid1.Cells[5,1]:='2'+DecimalSeparator+'3';
    5:StringGrid1.Cells[5,1]:='2'+DecimalSeparator+'0';
end;
StringGrid1.Cells[6,1]:=floattostr(strtofloat(StringGrid1.Cells[4,1])*strtofloat(StringGrid1.Cells[5,1]));
S:=0;
for i:=1 to length(StringGrid1.Cells[1,1]) do begin
   if StringGrid1.Cells[1,1][i]=DecimalSeparator then
      S:=1;
   S:=s/10;
end;
if not(CBDigital.Checked) then
   S:=s/2;
ShowMessage(floattostr(s));
StringGrid1.Cells[7,1]:=floattostr(sqrt(sqr(strtofloat(StringGrid1.Cells[6,1]))+sqr(s)));
end;

procedure TForm1.BClearClick(Sender: TObject);
var i,j:integer;
begin
for i:=1 to StringGrid1.RowCount-1 do
  for j:=0 to StringGrid1.ColCount-1 do
    StringGrid1.Cells[j,i]:='';
end;

procedure TForm1.CBCountChange(Sender: TObject);
begin
StringGrid1.RowCount:=strtoint(CBCount.Text)+1;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='x';
StringGrid1.Cells[1,0]:='ẋ';
StringGrid1.Cells[2,0]:='Δxᵢ';
StringGrid1.Cells[3,0]:='Δxᵢ²';
StringGrid1.Cells[4,0]:='S(ẋ)';
StringGrid1.Cells[5,0]:='S(st)';
StringGrid1.Cells[6,0]:='Δx(st)';
StringGrid1.Cells[7,0]:='Δx';
end;

procedure TForm1.FormResize(Sender: TObject);
begin
StringGrid1.DefaultColWidth:=trunc(Form1.Width/8)-4;
end;

procedure TForm1.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8, DecimalSeparator]) then Key:=#0;
end;


end.
