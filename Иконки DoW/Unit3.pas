unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Image1: TImage;
    Image2: TImage;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown3: TUpDown;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  dx,dy:integer;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form3.Close;
Form1.ImageEnView1.Bitmap.Assign(Image1.Picture.Bitmap);
Form1.BRefreshClick(Form3);
end;

procedure TForm3.Edit1Change(Sender: TObject);
var Recta:TRect;
begin
if (Edit1.Text<>'') and (Edit2.Text<>'') and (Edit3.Text<>'')then
Recta:=Rect(strtoint(Edit1.Text),strtoint(Edit2.Text),strtoint(Edit1.Text)+strtoint(Edit3.Text),strtoint(Edit2.Text)+strtoint(Edit3.Text));
Image1.Canvas.CopyRect(Image1.Canvas.ClipRect,Image2.Canvas,Recta);
end;

procedure TForm3.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   Edit1.Text:=IntToSTr(X);
   Edit2.Text:=IntToStr(Y);;
end;

end.
