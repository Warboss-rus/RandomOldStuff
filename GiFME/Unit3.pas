unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Filectrl;

type
  TForm3 = class(TForm)
    EName: TEdit;
    Label1: TLabel;
    EDescr: TEdit;
    Label2: TLabel;
    ListBoxFold: TListBox;
    ListBoxSGA: TListBox;
    BAddFold: TButton;
    BdeleteFold: TButton;
    BAddSGA: TButton;
    BdeleteSGA: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ListBoxMod: TListBox;
    BAddMod: TButton;
    BdeleteMod: TButton;
    OpenDialogSGA: TOpenDialog;
    OpenDialogMod: TOpenDialog;
    BExit: TButton;
    BSaveGif: TButton;
    procedure BExitClick(Sender: TObject);
    procedure Gifload(Sender: TObject);
    procedure BAddSGAClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BAddModClick(Sender: TObject);
    function CutName(str:string):string;
    function cutfold(str:string):string;
    procedure BdeleteModClick(Sender: TObject);
    procedure BdeleteSGAClick(Sender: TObject);
    procedure BdeleteFoldClick(Sender: TObject);
    procedure BAddFoldClick(Sender: TObject);
    procedure BSaveGifClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  flag:boolean;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.BAddFoldClick(Sender: TObject);
var s:string;
begin
GetDir(0,s);
if SelectDirectory('Выберите папку для добавления',s+'\Galaxy_in_Fire_MOD',s) then
   ListBoxFold.Items.Add(cutfold(s));
end;

procedure TForm3.BAddModClick(Sender: TObject);
var s:string;
begin
GetDir(0,s);
OpenDialogMod.InitialDir:=s;
if OpenDialogMod.Execute then begin
   ListBoxMod.Items.Add(cutname(OpenDialogMod.Filename));
end;
end;

procedure TForm3.BAddSGAClick(Sender: TObject);
var s:string;
begin
GetDir(0,s);
OpenDialogSGA.InitialDir:=s+'\Galaxy_in_Fire_MOD';
if OpenDialogSGA.Execute then
    ListBoxSGA.Items.Add(cutname(OpenDialogSGA.Filename));
end;

procedure TForm3.BdeleteFoldClick(Sender: TObject);
begin
ListBoxFOld.Items.Delete(ListboxFold.ItemIndex);
end;

procedure TForm3.BdeleteModClick(Sender: TObject);
begin
ListBoxMod.Items.Delete(ListboxMod.ItemIndex);
end;

procedure TForm3.BdeleteSGAClick(Sender: TObject);
begin
ListBoxSGA.Items.Delete(ListboxSGA.ItemIndex);
end;

procedure TForm3.BExitClick(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.BSaveGifClick(Sender: TObject);
var i:integer;
begin
try
assignfile(output,'Galaxyinfire.module');
rewrite(output);
writeln('[global]');
writeln;
writeln('UIName = '+EName.Text);
writeln('Description = '+EDescr.Text);
writeln('Playable = 1');
writeln('DllName = WXPMod');
writeln('ModFolder = Galaxy_in_Fire_MOD');
writeln('ModVersion = 1.0');
writeln('TextureFE = Art/UI/Textures/Title_winter_assault.tga');
writeln('TextureIcon = ');
writeln;
if ListBoxFold.Items.Count>0 then begin
  for i:=0 to ListBoxFold.Items.Count-1 do
     writeln('DataFolder.'+inttostr(i+1)+' = '+ListBoxFold.Items.Strings[i]);
     writeln;
end;
if ListBoxSGA.Items.Count>0 then begin
  for i:=0 to ListBoxSGA.Items.Count-1 do
     writeln('ArchiveFile.'+inttostr(i+1)+' = '+ListBoxSGA.Items.Strings[i]);
     writeln;
end;
if ListBoxMod.Items.Count>0 then begin
  for i:=0 to ListBoxMod.Items.Count-1 do
     writeln('RequiredMod.'+inttostr(i+1)+' = '+ListBoxMod.Items.Strings[i]);
end;
Closefile(output);
except
   MessageDlg('Файл galaxyinfire.module не существует!',mtError,[mbOK],0);
end;
end;

function TForm3.cutfold(str:string):string;
var i:integer;
ok:boolean;
begin
ok:=false;
i:=length(str);
  while (ok=false) and (i>0) do
    if str[i]='\' then begin
      delete(str,1,i);
      ok:=true;
    end else i:=i-1;
  result:=str;
end;

function TForm3.CutName(str:string):string;
var i:integer;
a,b:boolean;
begin
  i:=length(str);
  a:=false;
  b:=false;
  while (i>1) and (not((a=true) and (b=true))) do begin
    case str[i] of
       '.':begin
       delete(str,i,length(str)-i+1);
       a:=true;
       end;
       '\':begin
       delete(str,1,i);
       b:=true;
       end;
    end;
    i:=i-1;
  end;
result:=str;
end;

Function FindinFile(source:string;text:string):string;
var list: TStrings;
  i,p:integer;
  str1:string;
begin
  result:='';
   list:= TStringList.Create;
   list.LoadFromFile(source);
   for I := 0 to List.Count - 1 do begin
      str1:= list.Strings[i];
     while Length(str1)<>0 do
       begin
         p:= Pos(text, str1);
         if p<> 0 then
           begin
             result:=copy(str1,length(text)+p,length(str1));
             Delete(str1,1,Length(str1));
           end
           else begin
           Break;
           end;
       end;
   end;
end;


procedure TForm3.FormCreate(Sender: TObject);
var parameter: string;
i,j:integer;
begin
    GifLoad(Form3);
    Form1.GiFInstallcheck(Form3);
    for i:= 1 to ParamCount do begin
      parameter := ParamStr(i);
        if parameter='-auto' then Form1.BAutoCLick(form1);
        if parameter='-check' then Form1.BCheckClick(form1);
        if parameter='-save' then Form1.BSaveClick(Form1);
        if parameter='-close' then Form1.Close;
        if parameter='-dev' then Form1.BAdd2.Visible:=true;

    end;
end;

procedure TForm3.Gifload(Sender: TObject);
var i:integer;
begin
try
  EName.Text:=FindinFile('Galaxyinfire.module','UIName = ');
  EDescr.Text:=FindinFile('Galaxyinfire.module','Description = ');
  flag:=true;
  i:=1;
  while flag=true do begin
      if FindinFile('Galaxyinfire.module','DataFolder.'+inttostr(i)+' = ')='' then flag:=false else
      ListBoxFold.Items.Add(FindinFile('Galaxyinfire.module','DataFolder.'+inttostr(i)+' = '));
      i:=i+1;
  end;
  flag:=true;
  i:=1;
  while flag=true do begin
      if FindinFile('Galaxyinfire.module','ArchiveFile.'+inttostr(i)+' = ')='' then flag:=false else
      ListBoxSGA.Items.Add(FindinFile('Galaxyinfire.module','ArchiveFile.'+inttostr(i)+' = '));
      i:=i+1;
  end;
  flag:=true;
  i:=1;
  while flag=true do begin
      if FindinFile('Galaxyinfire.module','RequiredMod.'+inttostr(i)+' = ')='' then flag:=false else
      ListBoxMod.Items.Add(FindinFile('Galaxyinfire.module','RequiredMod.'+inttostr(i)+' = '));
      i:=i+1;
  end;
  closefile(input);
except
   MessageDLG('Невозможно найти файл Galaxyinfire.module!',mtError,[mbOK],0);
   Form1.Close;
end;
end;

end.
