unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZAbstractConnection, ZConnection, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    e_2: TEdit;
    e_1: TEdit;
    btn1: TButton;
    zqry: TZQuery;
    ds: TDataSource;
    con: TZConnection;
    btn2: TButton;
    ckb1: TCheckBox;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure ckb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  username:string;
  password:string;
  level:string;

implementation

uses
  Unit2, Unit8, Unit9;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
begin
 username := e_1.Text;
 password := e_2.Text;

  zqry := TZQuery.Create(nil);
  try
    zqry.Connection := con;
    zqry.SQL.Text := 'SELECT level FROM tbl_user WHERE username = :username AND password = :password';
    zqry.ParamByName('username').AsString := username;
    zqry.ParamByName('password').AsString := password;
    zqry.Open;

    if not zqry.IsEmpty then
    begin
      level := zqry.FieldByName('level').AsString;
      if level = 'admin' then
      begin
        // Pengguna berhasil login sebagai admin
        ShowMessage('Login admin berhasil!');
        Form2.Show;
      end else
      if level = 'user' then
      begin
        // Pengguna berhasil login sebagai user
        ShowMessage('Login user berhasil!');
        Form9.Show;
      end else

    end
    else
    begin
      // Informasi login tidak valid
      ShowMessage('Invalid username or password');
    end;
  finally
    zqry.Free;
  end;
end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
Form8.show;
end;

procedure TForm1.ckb1Click(Sender: TObject);
begin
if ckb1.Checked then
e_2.PasswordChar := #0 else
e_2.PasswordChar := '*'
end;

end.
