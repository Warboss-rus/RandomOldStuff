unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    BOpen: TButton;
    procedure BOpenClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x:integer;

implementation

{$R *.dfm}

procedure TForm1.BOpenClick(Sender: TObject);
begin
if OpenDialog1.Execute then begin
  MediaPlayer1.FileName:=OpenDialog1.FileName;
  MediaPlayer1.Open;
  MediaPlayer1.DisplayRect:=Form1.ClientRect;
end;
end;


procedure TForm1.FormResize(Sender: TObject);
begin
  MediaPlayer1.DisplayRect:=Form1.ClientRect;
end;

end.
