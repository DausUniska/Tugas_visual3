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
    supplier1: TMenuItem;
    penjualan1: TMenuItem;
    cekstok1: TMenuItem;
    procedure Barang1Click(Sender: TObject);
    procedure kustomer1Click(Sender: TObject);
    procedure supplier1Click(Sender: TObject);
    procedure penjualan1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure cekstok1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm2.Barang1Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm2.kustomer1Click(Sender: TObject);
begin
Form4.Show;
end;

procedure TForm2.supplier1Click(Sender: TObject);
begin
Form5.Show;
end;

procedure TForm2.penjualan1Click(Sender: TObject);
begin
Form6.Show;
end;

procedure TForm2.Logout1Click(Sender: TObject);
begin
if application.MessageBox('Yakin ingin logout?','Konfirmasi Ulang',MB_YesNo)=ID_Yes then
begin
Form2.Close;
end;
end;


procedure TForm2.cekstok1Click(Sender: TObject);
begin
Form7.Show;
end;

end.
