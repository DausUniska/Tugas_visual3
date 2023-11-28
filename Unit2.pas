unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Logout1: TMenuItem;
    Barang1: TMenuItem;
    kustomer1: TMenuItem;
    img1: TImage;
    procedure Barang1Click(Sender: TObject);
    procedure kustomer1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TForm2.Barang1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.kustomer1Click(Sender: TObject);
begin
Form4.Show;
end;

end.
