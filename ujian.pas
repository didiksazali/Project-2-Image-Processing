unit ujian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Edit1: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var

a, i : integer;

begin
a:= 2;

for i := 2 to 8 do

begin

ListBox1.Items.Add(IntToStr(i+2));

end;

a:= i;
Edit1.Text := (IntToStr(a));


end;

end.
