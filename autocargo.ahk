;CHANGE THESE USING WINDOWSPY!!!

;Seconds Between trying to sell/source
wait=3




;Manage Special Cargo
px1=1449
py1=504
;Sell Cargo Button
px2=845
py2=628
;Sell Button for Warehouse
sx1=1453
sy1=816
;Confirm Sell
sx2=1231
sy2=669
sx3=1040
sy3=671

;Source 1 Crate
gx3=442
gy3=688
;Confirm
gx4=1381 
gy4=633
;Source Cargo Button
gx1=1279
gy1=632
;Warehouse 1
wx1=738
wy1=485
wx2=467
wy2=731
gx2=968
gy2=356


;------------------------------------------------------------------------------------------
;DO NOT EDIT THE CODE BELOW

CoordMode, Mouse, Window
CoordMode, PixelGetColor, Window

^!s::  ; Control+Alt+S hotkey.

startapp:

Send {f11 down}
Sleep, 10
Send {f11 up}

Click WD
Sleep 200
Click WD
Sleep 200
Click WD
Sleep 200

Start:
if not WinExist("PopstarV") ; Keep the game focused
    return    
WinActivate  ; Activate the window found by the above command.

Click %px1% %py1%
Sleep 100
Click %px2% %py2%
Sleep 100
Click %wx1% %wy1%
Sleep 100
PixelGetColor, color1, %sx1%, %sy1%
if (color1 = "0xFFFFFF") { ; Check for Stock
goto source
} 
Click %sx1% %sy1%
Sleep 100
Click %sx1% %sy1%
Sleep 100
Click %sx2% %Sy2%
Sleep 100
Click %sx2% %Sy2%
Sleep 100
Click %sx3% %sy3%

;Click, 100 100 Right
Sleep, %wait%000
goto Start

source:
Click, 100 100 Right
Click %px1% %py1%
Sleep 100
Click, %gx1% %gy1%
Sleep, 100
Click, %wx2% %wy2%
Sleep, 100

Click, %gx3% %gy3%
Sleep, 100
Click, %gx4% %gy4%
goto startapp


^!d::Pause  ; Press Ctrl+Alt+D to pause. Press it again to resume.
