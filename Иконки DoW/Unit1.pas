unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GifImg, Menus, ExtCtrls, StdCtrls, ExtDlgs, IniFiles, imageenio,
  ieview, imageenview, ieopensavedlg;

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
    Panel1: TPanel;
    CBBackground: TCheckBox;
    ComboBox1: TComboBox;
    CBBorders: TCheckBox;
    ComboBox2: TComboBox;
    SavePictureDialog1: TSavePictureDialog;
    ImageEnView1: TImageEnView;
    OpenImageEnDialog1: TOpenImageEnDialog;
    Image1: TImage;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure BRefreshClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    Procedure FindFile(Dir:string; FileMask: string; aobject:TCombobox);
    procedure FormCreate(Sender: TObject);
    procedure CBBordersClick(Sender: TObject);
    procedure CBBackgroundClick(Sender: TObject);
    procedure BCutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a,b,c,path,name1:string;
  ini:TIniFile;
  MyRect: TRect;

implementation

uses Unit2, Unit3;

{$R *.dfm}

procedure TForm1.BCutClick(Sender: TObject);
begin if not(Image1.Picture.Height=0) then begin
Form3.Image2.Picture.Assign(Form1.ImageEnView1.Bitmap);
Form3.Show;
Form3.Image1.Picture.Bitmap.PixelFormat:=pf24bit;
Form3.Image2.Picture.Bitmap.PixelFormat:=pf24bit;
end else ShowMessage('Сначала откройте изображение');
end;

procedure TForm1.BRefreshClick(Sender: TObject);
var
Temp:TBitmap;
TempGif:TGifImage;
Ext: TGIFGraphicControlExtension;
i,j:integer;
begin
Image1.Picture:=nil;
Temp:=TBitmap.Create;
TempGif:=TGifImage.Create;
ImageEnView1.Bitmap.Transparent:=true;
Image1.Canvas.StretchDraw(myrect,ImageEnView1.Bitmap);
TempGif.Transparent:=true;
Image1.Picture.Bitmap.PixelFormat:=pf24bit;
if CBBackground.Checked then begin
  b:=Form2.Edit1.Text+'\'+Form1.ComboBox1.Text;
  Temp.Transparent:=true;
  Temp.Assign(image1.picture.bitmap);
  TempGif.LoadFromFile(b);
  TempGif.Bitmap.PixelFormat:=pf24bit;
  Image1.Picture.Bitmap.Assign(TempGif);
  Image1.Canvas.Draw(Image1.Width-Temp.Width,Image1.Height-Temp.Height,Temp);
end;
if CBBorders.Checked then begin
  c:=Form2.Edit2.Text+'\'+Form1.ComboBox2.Text;
  TempGif.LoadFromFile(c);
  Image1.Canvas.Draw(Image1.Width-tempgif.Width,Image1.Height-tempgif.Height,TempGif);
end;
for i:=0 to 64 do
   for j:=0 to 64 do
     if (i<1) or (i>62) or (j<1) or (j>62) or ((i<8) and ((j<8-i) or (55+i<j))) or ((i>56) and ((j<-55+i) or (i+j>119))) then
         Image1.Canvas.Pixels[i,j]:=clWhite{Image1.Picture.Bitmap.TransparentColor};
if not(Image1.Picture.Height=0) then begin
TempGif.Assign(Image1.Picture.Bitmap);
Ext := TGIFGraphicControlExtension.Create(TempGIF.Images[0]);
Ext.Transparent := True;
Ext.TransparentColorIndex := TempGIF.Images[0].Pixels[0,0];
end;
end;

function BMPRgbToGray(fBitmap: TBitmap): TBitmap;
    function RgbToGray(RGBColor: TColor): TColor;
        var  Gray: byte;
        begin
          Gray:=round((0.30 * GetRValue(RGBColor)) +
                      (0.59 * GetGValue(RGBColor)) +
                      (0.11 * GetBValue(RGBColor )));
          result:=RGB(Gray, Gray, Gray)
        end;
      var
        i, j: integer;
      begin
        result:=TBitmap.Create;
        result.Assign(fBitmap);
        for i:=0 to (result.Width - 1) do
          for j:=0 to (result.Height - 1) do
            result.Canvas.Pixels[i, j]:=RgbToGray(result.Canvas.Pixels[i, j])
      end;

procedure pathExtract(Str:String);
var i:integer;
begin
i:=length(str);
while (str[i] <> '\') and (i > 0) do
i := i - 1;
name1 := Copy(str, i + 1, Length(str) - i);
path:=copy(str,1,i);
end;

procedure TForm1.CBBackgroundClick(Sender: TObject);
begin
if CBBackground.Checked then
   if Combobox1.Items.Count=0 then begin
      ShowMessage('Не найдено ни одной рамки');
      CBBackground.Checked:=false;
   end else
   if Combobox1.ItemIndex=-1 then Combobox1.ItemIndex:=0;
BRefreshClick(MainMenu1);
end;

procedure TForm1.CBBordersClick(Sender: TObject);
begin
if CBBorders.Checked then
   if Combobox2.Items.Count=0 then begin
      ShowMessage('Не найдено ни одной рамки');
      CBBorders.Checked:=false;
   end else
   if Combobox2.ItemIndex=-1 then Combobox2.ItemIndex:=0;
BRefreshClick(MainMenu1);
end;

Procedure TForm1.FindFile(Dir:string; FileMask: string; aobject:TCombobox);
var SearchRec:TSearchRec;
begin
 if Dir<>'' then if Dir[length(Dir)]<>'\' then Dir:=Dir+'\';
 if FindFirst(Dir+FileMask, faAnyFile, SearchRec)=0 then repeat
   if (SearchRec.name='.') or (SearchRec.name='..') then continue;
   if (SearchRec.Attr and faDirectory)=0 then
   aobject.Items.Add(SearchRec.name);
 until FindNext(SearchRec)<>0;
 FindClose(SearchRec);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Combobox1.Items.Clear;
Combobox2.Items.Clear;
FindFile(Form2.Edit1.Text,'*.gif',Combobox1);
FindFile(Form2.Edit2.Text,'*.gif',Combobox2);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Ini:=TiniFile.Create(extractfilepath(paramstr(0))+'DoWicon.ini');
MyRect := Rect(0,0,64,64);
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
if OpenImageEnDialog1.Execute then
   ImageEnView1.IO.LoadFromFile(OpenImageEnDialog1.FileName);
BRefreshClick(MainMenu1);
end;

procedure TForm1.N5Click(Sender: TObject);
var GrayBMP:TBitmap;
Gif:TGifImage;
begin
Gif:=TGifImage.Create;
if Form2.CBdis.Checked then begin
  GrayBMP:=TBitmap.Create;
  GrayBMP.Transparent:=true;
  GrayBMP:=BMPRgbToGray(Image1.Picture.Bitmap);
end;
if SavePictureDialog1.Execute then begin
    case SavePictureDialog1.FilterIndex of
       1:begin
          SavePictureDialog1.Filename:=SavePictureDialog1.Filename+'.tga';
          ImageEnView1.Bitmap.Transparent:=true;
          ImageEnView1.Assign(Image1.Picture.Bitmap);
          ImageEnView1.AlphaChannel.Create;
          ImageEnView1.IO.SavetoFileTGA(SavePictureDialog1.Filename);
          if Form2.CBdis.Checked then begin
             pathExtract(SavePictureDialog1.Filename);
             ImageEnView1.IO.Bitmap:=(GrayBMP);
             ImageEnView1.IO.SavetoFileTGA(path+'\'+Form2.Edit3.Text+name1);
          end;
       end;
       2:begin
          SavePictureDialog1.Filename:=SavePictureDialog1.Filename+'.gif';
          Gif.Transparent:=true;
          Gif.Assign(Image1.Picture.Bitmap);
          Gif.SaveToFile(SavePictureDialog1.Filename);
          if Form2.CBdis.Checked then begin
             pathExtract(SavePictureDialog1.Filename);
             Gif.Assign(GrayBMP);
             Gif.SaveToFile(path+'\'+Form2.Edit3.Text+name1);
          end;
       end;
       3:begin
          SavePictureDialog1.Filename:=SavePictureDialog1.Filename+'.bmp';
          Image1.Picture.SaveToFile(SavePictureDialog1.Filename);
          if Form2.CBdis.Checked then begin
            pathExtract(SavePictureDialog1.Filename);
            GrayBMP.SaveToFile(path+'\'+Form2.Edit3.Text+name1);
          end;
       end;
end;
end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
ShowMessage('Иконки для Dow v0.2 by Warboss-rus');
end;



end.
