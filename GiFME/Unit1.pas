unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids,Buttons, Menus, SHELLAPI;

type
  TMod = record
    Name:string;
    Module:String;
    SGA:string;
    Modlink:string;
    SGALink:string;
  end;
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Panel1: TPanel;
    BAdd2: TButton;
    ScrollBar1: TScrollBar;
    GroupBox1: TGroupBox;
    BSave: TButton;
    BReset: TButton;
    BExit: TButton;
    GroupBox2: TGroupBox;
    BAuto: TButton;
    BCheck: TButton;
    BEdit: TButton;
    CBInfo: TCheckBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    SGA1: TMenuItem;
    procedure BExitClick(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    function FindFile(FileMask: string):boolean;
    procedure BAdd2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BEditClick(Sender: TObject);
    procedure BSaveClick(Sender: TObject);
    procedure GiFInstallcheck(Sender: TObject);
    procedure BCheckClick(Sender: TObject);
    procedure BAutoClick(Sender: TObject);
    procedure ButtonCreate (j:integer; Sender: Tobject);
    procedure ButtonInstallClick (Sender:TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure StringGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BResetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N1Click(Sender: TObject);
    procedure SGA1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  m:array [1..100] of Tmod;
  i:integer;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.BAdd2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.ButtonCreate (j:integer; Sender: Tobject);
var TB:TSpeedButton;
Rect:TRect;
begin
if ((StringGrid1.Cells[3,j]='да') or ((StringGrid1.Cells[3,j]='нет') and (StringGrid1.Cells[1,j]='Да') and (StringGrid1.Cells[2,j]='Да'))) and not(assigned(TspeedButton(StringGrid1.Objects[4,j]))) then begin
   TB:=TSpeedButton.Create(self);
   TB.Parent:=StringGrid1;
   Form1.StringGrid1.Objects[4,j]:=TB;
   TB.BoundsRect:=StringGrid1.CellRect(4,j);
   TB.OnClick:=ButtonInstallClick;
   if StringGrid1.Cells[3,j]='да' then
      TB.Caption:='Удалить';
   if ((StringGrid1.Cells[3,j]='нет') and (StringGrid1.Cells[1,j]='Да') and (StringGrid1.Cells[2,j]='Да')) then
       TB.Caption:='Установить';
  TB.Name:='Button'+inttostr(j);
end;
end;

procedure TForm1.ButtonInstallClick (Sender:TObject);
var s:string;
j,x:integer;
begin
s:='';
for j:=1 to length((Sender as TSpeedButton).name) do
   if (Sender as TSpeedButton).name[j] in ['0'..'9'] then S:=s+(Sender as TSpeedButton).name[j];
j:=strtoint(s);
if StringGrid1.Cells[3,j]='да' then begin //удаление
   while x<=Form3.ListBoxMod.Items.Count-1 do begin
      if m[j].Module=Form3.ListBoxMod.Items.Strings[x]
        then Form3.ListBoxMod.Items.Delete(x);
    x:=x+1;
   end;
   x:=0;
   while x<=Form3.ListBoxSGA.Items.Count-1 do begin
      if m[j].Module=Form3.ListBoxSGA.Items.Strings[x]
        then Form3.ListBoxSGA.Items.Delete(x);
   x:=x+1;
   end;
   (Sender as TSpeedButton).Caption:='Установить';
end else                                           //установка
if ((StringGrid1.Cells[3,j]='нет') and (StringGrid1.Cells[1,j]='Да') and (StringGrid1.Cells[2,j]='Да')) then begin
   for x:=0 to Form3.ListBoxMod.Items.Count-1 do
      if m[j].Module=Form3.ListBoxMod.Items.Strings[x]
        then Form3.ListBoxMod.Items.Delete(x);
   for x:=0 to Form3.ListBoxSGA.Items.Count-1 do
      if m[j].Module=Form3.ListBoxSGA.Items.Strings[x]
        then Form3.ListBoxSGA.Items.Delete(x);
   Form3.ListBoxSGA.Items.Add(M[j].SGA);
   Form3.ListBoxMod.Items.Add(m[j].Module);
   (Sender as TSpeedButton).Caption:='Удалить';
end;
GiFInstallCheck(Form1);
end;

procedure TForm1.GiFInstallcheck(Sender: TObject);
var j,x:integer;
a,b:boolean;
begin
   for j:=1 to i do begin
     a:=false;
     b:=false;
      for x:=0 to Form3.ListBoxSGA.Items.Count-1 do
         if m[j].SGA=Form3.ListBoxSGA.Items.Strings[x] then
             a:=true;
      for x:=0 to Form3.ListBoxMod.Items.Count-1 do
          if m[j].Module=Form3.ListBoxMod.Items.Strings[x] then
             b:=true;
   if ((a=true) and (b=true)) then StringGrid1.Cells[3,j]:='да'
   else StringGrid1.Cells[3,j]:='нет';
   ButtonCreate(j,StringGrid1);
   end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
if StringGrid1.Row>0 then
ShellExecute(Form1.Handle, 'open', PWideChar(m[StringGrid1.Row].Modlink),nil,nil,SW_SHOWNORMAL)
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
var j,x:integer;
s:string;
begin
StringGrid1.TopRow:=ScrollBar1.Position;
for j:=0 to i do begin
   S:='Button'+inttostr(j);
   for x :=0 to ComponentCount-1 do
      if (Components[x] is TSpeedButton) and (Components[x].Name=s) then
          (Components[x] as TSpeedButton).BoundsRect:=StringGrid1.CellRect(4,j);
end;
end;

procedure TForm1.SGA1Click(Sender: TObject);
begin
if StringGrid1.Row>0 then
ShellExecute(Form1.Handle, 'open', PWideChar(m[StringGrid1.Row].SGAlink),nil,nil,SW_SHOWNORMAL)
end;

procedure TForm1.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var j,x:integer;
s:string;
begin
for j:=0 to i do begin
   S:='Button'+inttostr(j);
   for x :=0 to ComponentCount-1 do
      if (Components[x] is TSpeedButton) and (Components[x].Name=s) then
          (Components[x] as TSpeedButton).BoundsRect:=StringGrid1.CellRect(4,j);
end;
end;

procedure TForm1.StringGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
 var j,x:integer;
s:string;
begin
if StringGrid1.TopRow<StringGrid1.RowCount-round(StringGrid1.Height/27) then
StringGrid1.TopRow:=StringGrid1.TopRow+1;
for j:=0 to i do begin
   S:='Button'+inttostr(j);
   for x :=0 to ComponentCount-1 do
      if (Components[x] is TSpeedButton) and (Components[x].Name=s) then
          (Components[x] as TSpeedButton).BoundsRect:=StringGrid1.CellRect(4,j);
end;
end;

procedure TForm1.StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
  var j,x:integer;
s:string;
begin
   if StringGrid1.TopRow>0 then
   StringGrid1.TopRow:=StringGrid1.TopRow-1;
   for j:=0 to i do begin
   S:='Button'+inttostr(j);
   for x :=0 to ComponentCount-1 do
      if (Components[x] is TSpeedButton) and (Components[x].Name=s) then
          (Components[x] as TSpeedButton).BoundsRect:=StringGrid1.CellRect(4,j);
end;
end;

procedure TForm1.BAutoClick(Sender: TObject);
var j:integer;
begin
for j:= 1 to i do
     if StringGrid1.Cells[3,j]<>'да' then
      if (FindFile(m[j].Module+'.module')=true) and (FindFile('Galaxy_in_Fire_MOD\'+m[j].SGA+'.sga')=true) then begin
          if CBInfo.Checked then MessageDlg('Мод '+m[j].Name+' найден и установлен!', mtInformation,[mbOK],0);
          Form3.ListBoxSGA.Items.Add(m[j].SGA);
          Form3.ListBoxMod.Items.Add(m[j].Module);
       end;
GiFInstallcheck(Form1);
end;

procedure TForm1.BCheckClick(Sender: TObject);
var j,x:integer;
begin
for j:=1 to i do begin
      if StringGrid1.Cells[3,j]='да' then begin
         if FindFile(m[j].Module+'.module')=false then begin //Проверка наличия модулей
           MessageDlg('Мод '+StringGrid1.Cells[0,j]+' не найден!'+#13+'Ссылка на мод и его архив будет удалена!',mtError,[mbOK],0);
           for x:=0 to Form3.ListBoxMod.Items.Count-1 do
              if m[j].Module=Form3.ListBoxMod.Items.Strings[x]
                then Form3.ListBoxMod.Items.Delete(x);
           for x:=0 to Form3.ListBoxSGA.Items.Count-1 do
              if m[j].Module=Form3.ListBoxSGA.Items.Strings[x]
                then Form3.ListBoxSGA.Items.Delete(x);
         end;
         if FindFile('Galaxy_in_Fire_MOD\'+m[j].SGA+'.sga')=false then begin //Проверка наличия SGA
           MessageDlg('Архив для мода '+StringGrid1.Cells[0,j]+' не найден!'+#13+'Ссылка на мод и его архив будет удалена!',mtError,[mbOK],0);
           for x:=0 to Form3.ListBoxMod.Items.Count-1 do
              if m[j].Module=Form3.ListBoxMod.Items.Strings[x]
                then Form3.ListBoxMod.Items.Delete(x);
           for x:=0 to Form3.ListBoxSGA.Items.Count-1 do
              if m[j].Module=Form3.ListBoxSGA.Items.Strings[x]
                then Form3.ListBoxSGA.Items.Delete(x);
         end;
      end;
      if StringGrid1.Cells[3,j]='нет' then begin //чистка
          for x:=0 to Form3.ListBoxMod.Items.Count-1 do
              if m[j].Module=Form3.ListBoxMod.Items.Strings[x]
                then Form3.ListBoxMod.Items.Delete(x);
          for x:=0 to Form3.ListBoxSGA.Items.Count-1 do
              if m[j].Module=Form3.ListBoxSGA.Items.Strings[x]
                then Form3.ListBoxSGA.Items.Delete(x);
      end;
end;
//удаление дубликатов папок
i:=0;
if Form3.ListBoxFold.Items.Count>0 then
  repeat
    j:=Form3.ListBoxFold.Items.Count-1;
    repeat
       if (Form3.ListBoxFold.Items[j]=Form3.ListBoxFold.Items[i]) and (j<>i) then
       Form3.ListBoxFold.Items.Delete(j);
       Dec(j)
    until j<=i;
    Inc(i)
  until i>Form3.ListBoxFold.Items.Count-1;
//удаление дубликатов SGA
i:=0;
if Form3.ListBoxSGA.Items.Count>0 then
  repeat
    j:=Form3.ListBoxSGA.Items.Count-1;
    repeat
       if (Form3.ListBoxSGA.Items[j]=Form3.ListBoxSGA.Items[i]) and (j<>i) then
       Form3.ListBoxSGA.Items.Delete(j);
       Dec(j)
    until j<=i;
    Inc(i)
  until i>Form3.ListBoxSGA.Items.Count-1;
//удаление дубликатов модов
i:=0;
if Form3.ListBoxMod.Items.Count>0 then
  repeat
    j:=Form3.ListBoxMod.Items.Count-1;
    repeat
       if (Form3.ListBoxMod.Items[j]=Form3.ListBoxMod.Items[i]) and (j<>i) then
         Form3.ListBoxMod.Items.Delete(j);
       Dec(j)
    until j<=i;
    Inc(i)
  until i>Form3.ListBoxMod.Items.Count-1;
BRefreshClick(Form1);
GiFInstallcheck(Form1);
If CBInfo.Checked then MessageDlg('Проверка завершена!',mtInformation,[mbOK],0);
end;

procedure TForm1.BEditClick(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.BExitClick(Sender: TObject);
begin
Form1.Close;
end;

function TForm1.FindFile(FileMask: string):boolean;
var SearchRec:TSearchRec;
begin
findFile:=false;
 if FindFirst(FileMask, faAnyFile, SearchRec)=0 then repeat
   if (SearchRec.name='.') or (SearchRec.name='..') then continue;
   if (SearchRec.Attr and faDirectory)=0 then
   findFile:=true;
 until FindNext(SearchRec)<>0;
 FindClose(SearchRec);
end;

procedure TForm1.BRefreshClick(Sender: TObject);
var j:integer;
begin
for j:=1 to i do begin
   StringGrid1.Cells[0,j]:=m[j].Name;
   if FindFile(m[j].Module+'.module')=true then StringGrid1.Cells[1,j]:='Да' else StringGrid1.Cells[1,j]:='Нет';
   if FindFile('Galaxy_in_Fire_MOD\'+m[j].SGA+'.sga')=true then StringGrid1.Cells[2,j]:='Да' else StringGrid1.Cells[2,j]:='Нет';
  end;
end;

procedure TForm1.BResetClick(Sender: TObject);
begin
Form3.ListBoxFold.Clear;
Form3.ListBoxFold.Items.add('Data');
Form3.ListBoxSGA.Clear;
Form3.ListBoxSGA.Items.add('GiF');
Form3.ListBoxMod.Clear;
Form3.ListBoxMod.Items.Add('DXP2');
Form3.ListBoxMod.Items.Add('W40k');
GiFInstallcheck(Form1);
end;

procedure TForm1.BSaveClick(Sender: TObject);
begin
Form3.BSaveGifClick(BSave);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
case MessageDlg('Сохранить изменения перед выходом?',mtWarning,[mbYes,mbNo,mbCancel],0) of
   6:Form3.BSaveGifClick(Form1);
   7:;
   2:Action:=caNone;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='Моды';
StringGrid1.Cells[1,0]:='Мод';
StringGrid1.Cells[2,0]:='SGA';
StringGrid1.Cells[3,0]:='Установлен';
StringGrid1.Cells[4,0]:='Действие';
i:=0;
try
   assignfile(input,'GiFmods.mods');
   reset(input);
   while not(EOF) do begin
      i:=i+1;
      StringGrid1.RowCount:=StringGrid1.RowCount+1;
      readln(m[i].Name);
      readln(m[i].Module);
      readln(m[i].SGA);
      readln(m[i].Modlink);
      readln(m[i].SGAlink);
   end;
   Closefile(input);
except
   MessageDlg('Файл GiFmods.mods не найден!'+#13#10+'Дальнейшая работа программы невозможна!'+#13#10+'Скачайте новый файл с сайта мода либо переустановите GiF',mtError,[mbOK],0);
   Application.Terminate;
end;
if StringGrid1.RowCount-round(StringGrid1.Height/27)>0 then
ScrollBar1.Max:=StringGrid1.RowCount-round(StringGrid1.Height/27)
else ScrollBar1.Visible:=false;
BRefreshClick(Form1);
end;



procedure TForm1.FormResize(Sender: TObject);
begin
ScrollBar1.Visible:=true;
if StringGrid1.RowCount-round(StringGrid1.Height/27)>0 then
ScrollBar1.Max:=StringGrid1.RowCount-round(StringGrid1.Height/27)
else ScrollBar1.Visible:=false;
ScrollBar1Change(Form1);
end;

end.
