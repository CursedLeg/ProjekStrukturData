unit MusicPlayer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, OleCtrls, WMPLib_TLB, ComCtrls, jpeg,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    OpenDialog1: TOpenDialog;
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Image1: TImage;
    Button5: TButton;
    Button6: TButton;
    Label2: TLabel;
    procedure Button4Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button4Click(Sender: TObject);
begin
if(OpenDialog1.Execute) then begin
//    MediaPlayer1.FileName:=OpenDialog1.FileName;
  //  MediaPlayer1.Open;
//    WindowsMediaPlayer1.Name
    WindowsMediaPlayer1.URL:=OpenDialog1.FileName;
    Button1.Enabled :=True;
    Button2.Enabled :=True;
    Button3.Enabled :=True;
    Label1.Caption := 'Sedang dijalankan: '+WindowsMediaPlayer1.URL;
  end;
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  WindowsMediaPlayer1.settings.volume := TrackBar1.Position*10;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  WindowsMediaPlayer1.controls.play;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  WindowsMediaPlayer1.controls.pause;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  WindowsMediaPlayer1.controls.stop;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  WindowsMediaPlayer1.settings.autoStart := false;
  WindowsMediaPlayer1.settings.volume := TrackBar1.Position*10;
end;


procedure TForm1.Button5Click(Sender: TObject);
begin
 Application.Terminate();
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Application.Minimize();
end;

end.
