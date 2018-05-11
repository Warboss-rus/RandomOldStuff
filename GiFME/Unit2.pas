unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids;

type
  TForm2 = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var j:integer;
begin
try
   assignfile(output,'GiFmods.mods');
   rewrite(output);
   for j:=1 to i do begin
      writeln(StringGrid1.Cells[0,j]);
      writeln(StringGrid1.Cells[1,j]);
      writeln(StringGrid1.Cells[2,j]);
   end;
except
   MessageDlg('Файл GiFmods.mods не найден!'+#13#10+'Дальнейшая работа программы невозможна!'+#13#10+'Скачайте новый файл с сайта мода либо переустановите GiF',mtError,[mbOK],0);
end;
CloseFile(output);
Form1.GiFInstallcheck(Form2);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form2.Close;
end;

procedure TForm2.FormActivate(Sender: TObject);
var j:integer;
begin
StringGrid1.DefaultColWidth:=trunc(StringGrid1.Width/3)-10;
StringGrid1.Cells[0,0]:='Название';
StringGrid1.Cells[1,0]:='SGA';
StringGrid1.Cells[2,0]:='Module';
StringGrid1.Cells[3,0]:='Ссылка мод';
StringGrid1.Cells[4,0]:='Ссылка SGA';
for j:=1 to i do begin
    StringGrid1.RowCount:=StringGrid1.RowCount+1;
    StringGrid1.Cells[0,j]:=m[j].Name;
    StringGrid1.Cells[1,j]:=m[j].SGA;
    StringGrid1.Cells[2,j]:=m[j].Module;
    StringGrid1.Cells[3,j]:=m[j].Modlink;
    StringGrid1.Cells[4,j]:=m[j].SGAlink;
end;
end;

end.
