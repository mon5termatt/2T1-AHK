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
Start:
if not WinExist("PopstarV") ; Keep the game focused
    return    
WinActivate  ; Activate the window found by the above command.

Click %px1% %py1%
Sleep 1000
Click %px2% %py2%
Sleep 100

;Choose a warehouse here
Click %wx1% %wy1%
Sleep 100
Click %sx1% %sy1%
Sleep 100
Click %sx1% %sy1%
Sleep 100
Click %sx2% %Sy2%
Sleep 100
Click %sx2% %Sy2%

;Click, 100 100 Right
Sleep, %wait%000
goto Start



^!a::
if not WinExist("PopstarV") ; Keep the game focused
    return    
WinActivate  ; Activate the window found by the above command.
Click %px1% %py1%
Sleep 100
Click, %gx1% %gy1%
Sleep, 100
Click, %wx2% %wy2%
Sleep, 100

Click, %gx3% %gy3%
Sleep, 100
Click, %gx4% %gy4%

Sleep, 2000

;NEED TO REENTER USING HOTKEY!!!

return












^!f::
PixelGetColor, color1, %x1%, %y1% 
PixelGetColor, color2, %x2%, %y2%
PixelGetColor, color3, %x3%, %y3%
PixelGetColor, color4, %x4%, %y4% 
msgbox, Color1:`n%x1% %y1% %color1%`nColor2:`n%x2% %y2% %color2%`nColor3:`n%x3% %y3% %color3%`nColor4:`n%x4% %y4% %color4%`n
		
return


^!d::Pause  ; Press Ctrl+Alt+D to pause. Press it again to resume.
