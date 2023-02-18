;CHANGE THESE USING WINDOWSPY!!!

;Sell Stock "BOX" In Manager
x=505
y=632

;Seconds Between trying to sell
wait=3

;Click Position
x2=998
y2=632



;------------------------------------------------------------------------------------------
;DO NOT EDIT THE CODE BELOW

CoordMode, Mouse, Window
CoordMode, PixelGetColor, Window
msgbox, Basic Usage:`nStart the script by hitting CTRL+ALT+S`nTo Stop the script hit CTRL+ALT+D`nTo debug the colors on screen hit CTRL+ALT+F`n`nStep 1: Open the Bunker Remote Access Terminal`nStep 2: Start the Script`n`nPlease note I have only tested on a 1080p monitor. You may need to edit this script if you arent @ 1080p `n`n For info on how to change this script Hit CTRL+ALT+A

^!s::  ; Control+Alt+S hotkey.
Start:
if not WinExist("PopstarV") ; Keep the game focused
    return    
WinActivate  ; Activate the window found by the above command.

PixelGetColor, color, %x%, %y% 
if (color = "0x000099") { ; Check if Ready to sell
goto bas
} 
if (color = "0x000017") { ; Check if stuck on a menu.
click, %x2%, %y2%
goto start
} else { ; All Other Colors, Just Wait.
goto start 
} 



;------------------------------------------------------------
;BUNKER AUTO SELL
;------------------------------------------------------------
bas:
Click, %x2% %y2% ; Click "Sell To Blaine County"
Sleep, 100
Click, %x2% %y2% ; Double check it confirms you are selling a ton
Sleep, 100
Click, %x2% %y2% ; Double check it confirms you are selling a ton
errchk:
Sleep, 200
PixelGetColor, color, %x%, %y% 
if (color = "0x000017") { ; Check if stuck on a menu.
click, %x2%, %y2% 
goto errchk
}

Sleep, %wait%000
goto Start

^!d::Pause  ; Press Ctrl+Alt+D to pause. Press it again to resume.

^!a:: 
MsgBox, 4,, To edit this script install autohotkey and launch window spy. Find the pixel at which the RED BACKGROUND of the "Sell Stock" Box is located.`n`nWould you like to view a video tutorial? (press Yes or No)
IfMsgBox Yes
Run, https://url.mon5termatt.club/bunkertut
return    

^!f::
PixelGetColor, color, %x%, %y% 
PixelGetColor, color2, %x2%, %y2% 

msgbox, Sell Box:`n%x% %y% %color%`nFailsafe Color`n%x2% %y2% %color2%`n`nIf you have stock to sell the top value should be 0x000099
return
