unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, registry;

type
  TForm1 = class(TForm)
    CBDiff: TComboBox;
    Label1: TLabel;
    BStartStop: TButton;
    LTime: TLabel;
    GPRecords: TGroupBox;
    LRating: TLabel;
    Label2: TLabel;
    BExit: TButton;
    BAbout: TButton;
    Timer1: TTimer;
    LRec1: TLabel;
    LRec2: TLabel;
    LRec3: TLabel;
    LRec4: TLabel;
    LRec5: TLabel;
    procedure BExitClick(Sender: TObject);
    procedure BAboutClick(Sender: TObject);
    procedure BStartStopClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure CBDiffChange(Sender: TObject);
    procedure GetRecords(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  diff:integer=32;
  time:longint=0;

implementation

{$R *.dfm}

procedure TForm1.BAboutClick(Sender: TObject);
begin
ShowMessage('Секундомер 0.0.4' + #13#10 + 'by Warboss-rus');
end;

procedure TForm1.BExitClick(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.BStartStopClick(Sender: TObject);
var Reg: TRegistry;
t:longint;
str,s:string;
flag:boolean;
begin
if Timer1.Enabled then begin
   Timer1.Enabled:=false;
   if (time>64-diff) and (time<64+diff) then
      LRating.Caption:='Отлично'
   else
      LRating.Caption:='Мде...';
   case CBDiff.ItemIndex of
       0:str:='noob_';
       1:str:='midd_';
       2:str:='diff_';
       3:str:='hard_';
  end;
  //Вычисляем место текущего времени в таблице
   Reg:=TRegistry.Create;
   Reg.RootKey := HKEY_LOCAL_MACHINE;
   Reg.OpenKey('Software\Timer',true);
   t:=-64;
   flag:=false;
   s:=Reg.ReadString(str+'1');
   if length(s)>0 then
       t:=strtoint(s);
   if ((abs(64-time)<abs(64-t)) and (flag=false)) then begin
      Reg.WriteString(str+'5',Reg.ReadString(str+'4'));
      Reg.WriteString(str+'4',Reg.ReadString(str+'3'));
      Reg.WriteString(str+'3',Reg.ReadString(str+'2'));
      Reg.WriteString(str+'2',Reg.ReadString(str+'1'));
      Reg.WriteString(str+'1',inttostr(time));
      flag:=true;
   end;
   t:=-64;
   s:=Reg.ReadString(str+'2');
   if length(s)>0 then
       t:=strtoint(s);
   if ((abs(64-time)<abs(64-t)) and (flag=false)) then begin
      Reg.WriteString(str+'5',Reg.ReadString(str+'4'));
      Reg.WriteString(str+'4',Reg.ReadString(str+'3'));
      Reg.WriteString(str+'3',Reg.ReadString(str+'2'));
      Reg.WriteString(str+'2',inttostr(time));
      flag:=true;
   end;
   t:=-64;
   s:=Reg.ReadString(str+'3');
   if length(s)>0 then
       t:=strtoint(s);
   if ((abs(64-time)<abs(64-t)) and (flag=false)) then begin
      Reg.WriteString(str+'5',Reg.ReadString(str+'4'));
      Reg.WriteString(str+'4',Reg.ReadString(str+'3'));
      Reg.WriteString(str+'3',inttostr(time));
      flag:=true;
   end;
   t:=-64;
   s:=Reg.ReadString(str+'4');
   if length(s)>0 then
       t:=strtoint(s);
   if ((abs(64-time)<abs(64-t)) and (flag=false)) then begin
      Reg.WriteString(str+'5',Reg.ReadString(str+'4'));
      Reg.WriteString(str+'4',inttostr(time));
      flag:=true;
   end;
   t:=-64;
   s:=Reg.ReadString(str+'5');
   if length(s)>0 then
       t:=strtoint(s);
   if ((abs(64-time)<abs(64-t)) and (flag=false)) then begin
      Reg.WriteString(str+'5',inttostr(time));
   end;
   Reg.CloseKey;
  Reg.Free;
   GetRecords(Form1);
   BStartStop.Caption:='Старт';
   time:=0;
end else begin
   Timer1.Enabled:=true;
   BStartStop.Caption:='Стоп';
   LRating.Caption:='';
end;
end;

procedure TForm1.CBDiffChange(Sender: TObject);
begin
case CBDiff.ItemIndex of
   0:diff:=32;
   1:diff:=19;
   2:diff:=6;
   3:diff:=1;
end;
LRec1.Caption:='';
LRec2.Caption:='';
LRec3.Caption:='';
LRec4.Caption:='';
LRec5.Caption:='';
GetRecords(Form1);
end;

procedure TForm1.FormActivate(Sender: TObject);
var
s:string;
t:integer;
Reg: TRegistry;
begin
GetRecords(Form1);
Reg:=TRegistry.Create;
Reg.RootKey := HKEY_LOCAL_MACHINE;
Reg.OpenKey('Software\Timer',false);
s:=Reg.ReadString('diff');
if length(s)>0 then begin
   t:=strtoint(s);
   CBDiff.ItemIndex:=t;
end;
Reg.CloseKey;
Reg.Free;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
var Reg:TRegistry;
begin
Reg:=TRegistry.Create;
Reg.RootKey := HKEY_LOCAL_MACHINE;
Reg.OpenKey('Software\Timer',false);
Reg.WriteString('diff',inttostr(CBDiff.ItemIndex));
Reg.CloseKey;
Reg.Free;
end;

procedure TForm1.GetRecords(Sender: TObject);
var Reg: TRegistry;
str,s:string;
t:longint;
begin
  Reg:=TRegistry.Create;
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  Reg.OpenKey('Software\Timer',false);
  case CBDiff.ItemIndex of
       0:str:='noob_';
       1:str:='midd_';
       2:str:='diff_';
       3:str:='hard_';
  end;
  t:=-1;
  s:=Reg.ReadString(str+'1');
    if length(s)>0 then
       t:=strtoint(s);
  if t>=0 then LRec1.Caption:=inttostr(t div 3840)+':'+inttostr((t mod 3840) div 64)+':'+inttostr(round((t mod 64)*1.5625));
  t:=-1;
  s:=Reg.ReadString(str+'2');
    if length(s)>0 then
       t:=strtoint(s);
  if t>=0 then LRec2.Caption:=inttostr(t div 3840)+':'+inttostr((t mod 3840) div 64)+':'+inttostr(round((t mod 64)*1.5625));
  t:=-1;
  s:=Reg.ReadString(str+'3');
    if length(s)>0 then
       t:=strtoint(s);
  if t>=0 then LRec3.Caption:=inttostr(t div 3840)+':'+inttostr((t mod 3840) div 64)+':'+inttostr(round((t mod 64)*1.5625));
  t:=-1;
  s:=Reg.ReadString(str+'4');
    if length(s)>0 then
       t:=strtoint(s);
  if t>=0 then LRec4.Caption:=inttostr(t div 3840)+':'+inttostr((t mod 3840) div 64)+':'+inttostr(round((t mod 64)*1.5625));
  t:=-1;
  s:=Reg.ReadString(str+'5');
    if length(s)>0 then
       t:=strtoint(s);
  if t>=0 then LRec5.Caption:=inttostr(t div 3840)+':'+inttostr((t mod 3840) div 64)+':'+inttostr(round((t mod 64)*1.5625));
  Reg.CloseKey;
  Reg.Free;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
time:=time+1;
LTime.Caption:=format('%2d',[time div 3840])+':'+format('%2d',[(time mod 3840) div 64])+':'+format('%2d',[round((time mod 64)*1.5625)]);
end;

end.
