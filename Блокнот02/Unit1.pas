unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls,Clipbrd;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N6: TMenuItem;
    N11: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  f:textfile;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.N12Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.N2Click(Sender: TObject);
var st:string;
begin
if OpenDialog1.Execute then begin
    AssignFile(f,OpenDialog1.FileName);
    reset(f);
    Memo1.Text:='';
    repeat
        Readln(f,st);
        Memo1.Text:=Memo1.Text + st + #13 + #10;
    until EOF(f);
    end;
CloseFile(f);
Memo1.SetFocus;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
if SaveDialog1.Execute then
        begin
            AssignFile(f,SaveDialog1.FileName);
            Rewrite(f);
            Write(f,Memo1.Text);
            CloseFile(f);
        end;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
AssignFile(f,OpenDialog1.FileName);
Rewrite(f);
Write(f,Memo1.Text);
CloseFile(f);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
Clipboard.AsText:=Memo1.Text;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
Memo1.Text:=Memo1.Text+ClipBoard.AsText;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Memo1.Text:='';
end;

end.
