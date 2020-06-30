unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: char);
    procedure Edit3KeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form1: TForm1;

implementation
 uses unit2;
{$R *.lfm}

{ TForm1 }


procedure TForm1.Button2Click(Sender: TObject);
var a,b,d:real;
begin
a:= StrToFloat(Edit2.Text);
b:= StrToFloat(Edit3.Text);
d:= a-b;
Edit1.Text:= FloatToStr(d);
end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b,d:real;
begin
a:= StrToFloat(Edit2.Text);
b:= StrToFloat(Edit3.Text);
d:= a+b;
Edit1.Text:= FloatToStr(d);
end;

procedure TForm1.Button3Click(Sender: TObject);
var a,b,d:real;
begin
a:= StrToFloat(Edit2.Text);
b:= StrToFloat(Edit3.Text);
d:= a*b;
Edit1.Text:= FloatToStr(d);
end;

procedure TForm1.Button4Click(Sender: TObject);
var a,b,d:real;
begin
a:= StrToFloat(Edit2.Text);
b:= StrToFloat(Edit3.Text);
d:= a/b;
Edit1.Text:= FloatToStr(d);
end;

procedure TForm1.Button5Click(Sender: TObject);
var a,b,d:real;
  begin
  a:= StrToFloat(Edit2.Text);
  b:= StrToFloat(Edit3.Text);
  d:= (a*b)/100;
  Edit1.Text:= FloatToStr(d);
end;

procedure TForm1.Button6Click(Sender: TObject);
  var a,b,d:real;
  begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;

end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  unit2.Form2.Show;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: char);
begin
 if not(key in [#8,'0'..'9',',','-']) then
    begin
      MessageDlg('Введите число а не букву',mtInformation,[mbOk],0);
      Key:=#0;
    end;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: char);
begin
  if not(key in [#8,'0'..'9',',','-']) then
    begin
      MessageDlg('Введите число а не букву',mtInformation,[mbOk],0);
      Key:=#0;
    end;
end;

end.

