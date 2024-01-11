unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm9 = class(TForm)
    img1: TImage;
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Logout1: TMenuItem;
    Barang1: TMenuItem;
    Kustomer1: TMenuItem;
    procedure Kustomer1Click(Sender: TObject);
    procedure Barang1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit3, Unit4;

{$R *.dfm}



procedure TForm9.Kustomer1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm9.Barang1Click(Sender: TObject);
begin
form3.show;
end;

procedure TForm9.Logout1Click(Sender: TObject);
begin
if MessageDlg('APAKAH ANDA YAKIN INGIN KELUAR?',mtWarning,[mbYes,mbNo],0)= mryes then
   begin
       Application.Terminate;
   end;
end;

end.
