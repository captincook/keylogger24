library kbprs;

uses
   Windows, Messages, SysUtils;

type
 PHookRec = ^THookRec;
 THookRec = record
   AppHnd: Integer;
   MemoHnd: Integer;
 end;
var
 Hooked: Boolean;
 hKeyHook, hMemo, hMemFile, hApp: HWND;
 PHookRec1: PHookRec;

function KeyHookFunc(Code, VirtualKey, KeyStroke: Integer): LRESULT; stdcall;
var
 KeyState1: TKeyBoardState;
 AryChar: array[0..1] of Char;
 Count: Integer;
begin
 Result:=0;
 if Code=HC_NOREMOVE then exit;
 Result:=CallNextHookEx(hKeyHook, Code, VirtualKey, KeyStroke);
 if Code < 0 then exit;
 if Code=HC_ACTION
 then
  begin
   if ((KeyStroke and (1 shl 30)) <> 0)
   then
    if not IsWindow(hMemo)
    then
     begin
      hMemFile:=OpenFileMapping(FILE_MAP_WRITE, False, 'sysproc32');
      PHookRec1:=MapViewOfFile(hMemFile, FILE_MAP_WRITE, 0, 0, 0);
      if PHookRec1<>nil
      then
       begin
        hMemo:=PHookRec1.MemoHnd;
        hApp:=PHookRec1.AppHnd;
       end;
      end;

    if ((KeyStroke and (1 shl 30)) <> 0)
    then
     begin
      GetKeyboardState(KeyState1);
      Count:=ToAscii(VirtualKey, KeyStroke, KeyState1, AryChar, 0);
      if Count=1
      then
       begin
        PostMessage(hApp, WM_USER + 1678, Ord(AryChar[0]), 0);
       end;
     end;
  end;
end;

function StartHook(MemoHandle, AppHandle: HWND): Byte; export;
begin
 Result:=0;
 if Hooked
 then
  begin
   Result:=1;
   Exit;
  end;

 if not IsWindow(MemoHandle)
 then
  begin
   Result:=4;
   Exit;
  end;

 hKeyHook:=SetWindowsHookEx(WH_KEYBOARD, KeyHookFunc, hInstance, 0);
 if hKeyHook > 0
 then
  begin
   hMemFile:=CreateFileMapping($FFFFFFFF, // $FFFFFFFF gets a page memory file
     nil,              // no security attributes
     PAGE_READWRITE,   // read/write access
     0,                // size: high 32-bits
     SizeOf(THookRec), // size: low 32-bits
     'sysproc32');    // name of map object
   PHookRec1:=MapViewOfFile(hMemFile, FILE_MAP_WRITE, 0, 0, 0);
   hMemo:=MemoHandle;
   PHookRec1.MemoHnd:=MemoHandle;
   hApp:=AppHandle;
   PHookRec1.AppHnd:=AppHandle;
   Hooked:=true;
  end
 else Result:=2;
end;

function StopHook: Boolean; export;
begin
 if PHookRec1 <> nil
 then
  begin
   UnmapViewOfFile(PHookRec1);
   CloseHandle(hMemFile);
   PHookRec1:=nil;
  end;
 if Hooked then
  Result:=UnhookWindowsHookEx(hKeyHook)
 else Result:=true;
 Hooked:=false;
end;

procedure EntryProc(dwReason: DWORD);
begin
 if (dwReason=Dll_Process_Detach)
 then
  begin
   if PHookRec1<>nil
   then
    begin
     UnmapViewOfFile(PHookRec1);
     CloseHandle(hMemFile);
    end;
   UnhookWindowsHookEx(hKeyHook);
  end;
end;

exports StartHook, StopHook;

begin
 PHookRec1:=nil;
 Hooked:=False;
 hKeyHook:=0;
 hMemo:=0;
 DLLProc:=@EntryProc;
 EntryProc(Dll_Process_Attach);
end.
