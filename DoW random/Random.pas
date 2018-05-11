unit Random;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var v,T:Extended;
begin
v:=StrtoFloat(Edit1.Text)*(1-StrToFloat(Edit2.Text))*(1-StrToFloat(Edit3.Text))*(1-StrToFloat(Edit4.Text))*(1-StrToFloat(Edit5.Text));
label1.Caption:='1 - '+FloatToStr(v)+#13#10;
T:=v;
v:=(1-StrtoFloat(Edit1.Text))*StrToFloat(Edit2.Text)*(1-StrToFloat(Edit3.Text))*(1-StrToFloat(Edit4.Text))*(1-StrToFloat(Edit5.Text));
label1.Caption:=label1.Caption+'2 - '+FloatToStr(v)+#13#10;
T:=T+v;
v:=(1-StrtoFloat(Edit1.Text))*(1-StrToFloat(Edit2.Text))*StrToFloat(Edit3.Text)*(1-StrToFloat(Edit4.Text))*(1-StrToFloat(Edit5.Text))
  + StrtoFloat(Edit1.Text)*StrToFloat(Edit2.Text)*(1-StrToFloat(Edit3.Text))*(1-StrToFloat(Edit4.Text))*(1-StrToFloat(Edit5.Text));
label1.Caption:=label1.Caption+'3 - '+FloatToStr(v)+#13#10;
T:=T+v;
v:=(1-StrtoFloat(Edit1.Text))*(1-StrToFloat(Edit2.Text))*(1-StrToFloat(Edit3.Text))*StrToFloat(Edit4.Text)*(1-StrToFloat(Edit5.Text))
  + StrtoFloat(Edit1.Text)*(1-StrToFloat(Edit2.Text))*StrToFloat(Edit3.Text)*(1-StrToFloat(Edit4.Text))*(1-StrToFloat(Edit5.Text));
label1.Caption:=label1.Caption+'4 - '+FloatToStr(v)+#13#10;
T:=T+v;
v:=(1-StrtoFloat(Edit1.Text))*(1-StrToFloat(Edit2.Text))*(1-StrToFloat(Edit3.Text))*(1-StrToFloat(Edit4.Text))*StrToFloat(Edit5.Text)
  + StrtoFloat(Edit1.Text)*(1-StrToFloat(Edit2.Text))*(1-StrToFloat(Edit3.Text))*StrToFloat(Edit4.Text)*(1-StrToFloat(Edit5.Text))
  + (1-StrtoFloat(Edit1.Text))*StrToFloat(Edit2.Text)*StrToFloat(Edit3.Text)*(1-StrToFloat(Edit4.Text))*(1-StrToFloat(Edit5.Text));
label1.Caption:=label1.Caption+'5 - '+FloatToStr(v)+#13#10;
T:=T+v;
label1.Caption:=label1.Caption+'Total - '+FloatToStr(T);
end;

end.
