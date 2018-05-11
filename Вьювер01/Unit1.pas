unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs, JPEG;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Mas: TComboBox;
    Brows: TOpenPictureDialog;
    Browse: TButton;
    BNext: TButton;
    procedure MasSelect(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BrowseClick(Sender: TObject);
    procedure BNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  H,W,r:integer;
  path:string;
  m:real;
  searchResult : TSearchRec;

implementation

{$R *.dfm}

procedure TForm1.BNextClick(Sender: TObject);
begin
r:=findnext(searchResult);
if r=0 then Image1.Picture.LoadFromFile(path+'\'+searchResult.Name);
Image1.Height:=Image1.Picture.Height;
Image1.Width:=Image1.Picture.Width;
W:=Image1.Width;
H:=Image1.Height;
Image1.Height:=round(h*m);
Image1.Width:=round(W*m);
end;

procedure TForm1.BrowseClick(Sender: TObject);
begin
if Brows.Execute then
  Image1.Picture.LoadFromFile(Brows.Filename);
Image1.Height:=Image1.Picture.Height;
Image1.Width:=Image1.Picture.Width;
W:=Image1.Width;
H:=Image1.Height;
path:=extractfiledir(Brows.FileName);
r:=FindFirst(path+'\*.jpg', faAnyFile, searchResult);
while not((path+'\'+searchResult.Name)=(Brows.FileName)) do r:=findnext(searchResult);

BNext.Enabled:=true;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
H:=Image1.Picture.Height;
W:=Image1.Picture.Width;
end;

procedure TForm1.MasSelect(Sender: TObject);
begin
case Mas.ItemIndex of
0:m:=0.1;
1:m:=0.2;
2:m:=0.3;
3:m:=0.4;
4:m:=0.5;
5:m:=0.6;
6:m:=0.7;
7:m:=0.8;
8:m:=0.9;
9:m:=1;
10:m:=2;
11:m:=5;
12:m:=10;
end;
Image1.Height:=round(h*m);
Image1.Width:=round(W*m);
end;

end.
