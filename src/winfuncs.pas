Unit winfuncs;
interface
uses
   Windows, SysUtils, TlHelp32;

 function GetWinCaption(Wnd:HWND):string;
 function GetExeNameByProcID (WinHandle: HWND) : String;

implementation


function GetWinCaption(Wnd:HWND):string;
var p:array [0..256] of char;
begin
 GetWindowText(wnd,p,255);
 result:=strpas(p);
end;


function GetExeNameByProcID (WinHandle: HWND) : String;
var
 ProcID          : DWord;
 ContinueLoop    : BOOL;
 FSnapshotHandle : THandle;
 FProcessEntry32 : TProcessEntry32;
begin
 GetWindowThreadProcessId (WinHandle, @ProcID);

 FSnapshotHandle := CreateToolhelp32Snapshot (TH32CS_SNAPPROCESS, 0);

 FProcessEntry32.dwSize := Sizeof(FProcessEntry32);

 ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

 Result := '';
 while (Integer (ContinueLoop) <> 0) and (Result='') do
 begin
  if FProcessEntry32.th32ProcessID = ProcID then
   Result := FProcessEntry32.szExeFile;
  ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
 end;
 CloseHandle(FSnapshotHandle);
 
end;


end.

