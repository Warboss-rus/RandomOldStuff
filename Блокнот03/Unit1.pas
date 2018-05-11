unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus,clipbrd, ExtCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    RText: TRichEdit;
    FontDialog1: TFontDialog;
    OpenTextFileDialog1: TOpenTextFileDialog;
    SaveTextFileDialog1: TSaveTextFileDialog;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    FindDialog1: TFindDialog;
    ReplaceDialog1: TReplaceDialog;
    procedure N13Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Find(Sender: TObject);
    procedure ReplaceDialog1Replace(Sender: TObject);
    procedure N24Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Spos: Integer;

implementation

uses Unit2;

{$R *.dfm}


procedure TForm1.N10Click(Sender: TObject);
begin
Clipboard.AsText:=RText.SelText;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
RText.SelText:=Clipboard.AsText;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
RText.Text:='';
end;

procedure TForm1.N13Click(Sender: TObject);
begin
if FontDialog1.Execute then
 RText.SelAttributes.Assign(FontDialog1.Font);
RText.SetFocus;


end;

procedure TForm1.N14Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
RText.Paragraph.Alignment:=taLeftJustify;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
RText.Paragraph.Alignment:=taCenter;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
RText.Paragraph.Alignment:=taRightJustify;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
RText.Paragraph.Numbering:=nsNone;
end;

procedure TForm1.N22Click(Sender: TObject);
begin
RText.Paragraph.Numbering:=nsBullet;

end;

procedure TForm1.N23Click(Sender: TObject);
begin
  with FindDialog1 do
  begin
    FindText := RText.Text;
    Position := Point(Form1.Left, Form1.Top + RText.Top + RText.Height);
    Options := Options + [frHideUpDown, frHideWholeWord];
    Execute;
end;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
with ReplaceDialog1 do
  begin
    FindText := RText.Text;
    Position := Point(Form1.Left, Form1.Top + RText.Top + RText.Height);
    Options := Options + [frHideUpDown, frHideWholeWord];
    Execute;
end;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
if OpenTextFileDialog1.Execute then
RText.Lines.LoadFromFile(OpenTextFileDialog1.FileName);
end;

procedure TForm1.N6Click(Sender: TObject);
begin
RText.Lines.SavetoFile(OpenTextFileDialog1.FileName);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
if SaveTextFileDialog1.Execute then
case SaveTextFileDialog1.FilterIndex of
1:RText.Lines.SaveToFile(SaveTextFileDialog1.FileName+'.rtf');
2:begin
  RText.PlainText := True;
  RText.Lines.SaveToFile(SaveTextFileDialog1.FileName+'.txt');
end;
end;
end;
procedure TForm1.N8Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
Clipboard.AsText:=RText.SelText;
RText.SelText:='';
end;

procedure TForm1.ReplaceDialog1Find(Sender: TObject);
begin
with ReplaceDialog1 do
 begin
  if frMatchCase in Options
   then RText.SelStart := Pos(FindText,
    Copy(RText.Lines.Text, SPos + 1,
         Length(RText.Lines.Text))) + Spos - 1
   else RText.SelStart := Pos(AnsiLowerCase(FindText),
    AnsiLowerCase(Copy(RText.Lines.Text, SPos + 1,
                  Length(RText.Lines.Text)))) + Spos - 1;
  if RText.SelStart >= Spos
   then
    begin
    RText.SelLength := Length(FindText);
     SPos := RText.SelStart + RText.SelLength + 1;
    end
   else if MessageDlg(
    'Текст "'+FindText+'" не найден. Начать сначала?',
    mtConfirmation, mbYesNo, 0) <> mrYes
    then CloseDialog
    else SPos := 0;
 end;
 RText.SetFocus;
end;

procedure TForm1.ReplaceDialog1Replace(Sender: TObject);
begin
if RText.SelText <> ''
  then RText.SelText := ReplaceDialog1.ReplaceText;
 if frReplaceAll in ReplaceDialog1.Options
  then ReplaceDialog1Find(Self);
end;

procedure TForm1.FindDialog1Find(Sender: TObject);
begin
 with FindDialog1 do
 begin
  if frMatchCase in Options
   then RText.SelStart := Pos(FindText,
    Copy(RText.Lines.Text, SPos + 1,
         Length(RText.Lines.Text))) + Spos - 1
   else RText.SelStart := Pos(AnsiLowerCase(FindText),
    AnsiLowerCase(Copy(RText.Lines.Text, SPos + 1,
                  Length(RText.Lines.Text)))) + Spos - 1;
  if RText.SelStart >= Spos
   then
    begin
    RText.SelLength := Length(FindText);
     SPos := RText.SelStart + RText.SelLength + 1;
    end
   else if MessageDlg(
    'Текст "'+FindText+'" не найден. Начать сначала?',
    mtConfirmation, mbYesNo, 0) <> mrYes
    then CloseDialog
    else SPos := 0;
 end;
 RText.SetFocus;
end;
end.
