unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,clipbrd;

type
  TForm1 = class(TForm)
    Text: TMemo;
    Open: TButton;
    Save: TButton;
    Copy: TButton;
    Paste: TButton;
    Clear: TButton;
    About: TButton;
    Close1: TButton;
    FilePath: TEdit;
    Browse: TButton;
    procedure AboutClick(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure CopyClick(Sender: TObject);
    procedure PasteClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:Textfile;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.AboutClick(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
Text.Text:='';
Text.SetFocus;
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.CopyClick(Sender: TObject);
begin
clipboard.AsText:=Text.Text;
Text.SetFocus;
end;

procedure TForm1.OpenClick(Sender: TObject);
var st:string;
begin
AssignFile(f,FilePath.Text);
Reset(f);
Text.Text:='';
while not EOF(f) do begin
Readln(f,st);
Text.Text:=Text.Text + st + #13 + #10;
end;
CloseFile(f);
Text.SetFocus;
end;

procedure TForm1.PasteClick(Sender: TObject);
begin
Text.Text:=Text.Text + Clipboard.AsText;
Text.SetFocus
end;

procedure TForm1.SaveClick(Sender: TObject);
begin
AssignFile(f,FilePath.Text);
Rewrite(f);
Write(f,Text.Text);
CloseFile(f);
Text.SetFocus;
end;

end.
