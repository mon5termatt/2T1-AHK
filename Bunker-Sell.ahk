;CHANGE THESE USING WINDOWSPY!!!

;Sell Stock "BOX" In Manager
x=505
y=632
;Seconds Between trying to sell
wait=3

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

 
PixelGetColor, color, 505, 632 

if (color = "0x000099") {
sleep, 1
} else {
goto Start
}

;------------------------------------------------------------
;BUNKER AUTO SELL
;------------------------------------------------------------

Click, 931 674 ; Click "Sell To Blaine County"
Click, 931 674 ; Click "Sell To Blaine County"
Click, 967 618 ; Double check it confirms you are selling a ton
Click, 967 618 ; Double check it confirms you are selling a ton
Click, 1063 618 ; Double check it confirms you are selling a ton
Click, 1063 618 ; Double Click.
Sleep, %wait%000
goto Start





^!d:: 
ExitApp
return

^!a:: 
MsgBox, 4,, To edit this script install autohotkey and launch window spy. Find the pixel at which the RED BACKGROUND of the "Sell Stock" Box is located.`n`nWould you like to view a video tutorial? (press Yes or No)
IfMsgBox Yes
Run, https://url.mon5termatt.club/bunkertut
return    

^!f::
PixelGetColor, color, %x%, %y% 
msgbox, The current color is currently %color%`n`nIf you have stock to sell this value should be 0x000099
return
