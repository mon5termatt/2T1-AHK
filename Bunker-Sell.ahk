;CHANGE THESE USING WINDOWSPY!!!
p1x=997
p2x=1001
py=283
;ALSO CHANGE LINES 19 AND 26 HEX CODES
CoordMode, Mouse, Window
CoordMode, PixelGetColor, Window
msgbox, Start the script by hitting CTRL+ALT+S`nTo Stop the script hit CTRL+ALT+D`n`nBind Open Bunker manager to F11 Then enter the main screen so you can see stock level.`n`nSet multiplier to "306720"`n`nYOU MUST BE RUNNING ON YOUR MAIN MONITOR AND WINDOWED FULLSCREEN.`n`nPlease note I have only tested on a 1080p monitor. `n`n For info on how to change the script Hit CTRL+ALT+A

^!s::  ; Control+Alt+S hotkey.
Start:
if not WinExist("PopstarV")
    return	
WinActivate  ; Activate the window found by the above command.


PixelGetColor, color1, %p1x%, %py%
PixelGetColor, color2, %p2x%, %py% 
if (color1 = "0x895B01") {
sleep, 1
} else {
Sleep, 1000
goto Start
}

if (color2 = "0x000000") {
sleep, 1
} else {
Sleep, 1000
goto Start
}

;------------------------------------------------------------
;BUNKER AUTO SELL
;------------------------------------------------------------

Sleep, 100
Click, 487 626
Sleep, 100
Click, 931 674 ; Click "Sell To Blaine County"
Sleep, 100
Click, 931 674 ; Click "Sell To Blaine County"
Sleep, 100
Click, 967 618 ; Double check it confirms you are selling a ton
Sleep, 100
Click, 1063 618 ; Double check it confirms you are selling a ton
Sleep, 1000
Click, 100 100 Right ; right click twice here to exit 
Click, 100 100 Right
Sleep, 2000 ; Wait then reenter manager
Send, {f11 down}
Sleep, 10
Send, {f11 up}
Sleep, 100
Click, 1127 637
Click, 1127 637
Sleep, 500
goto Start





^!d:: 
ExitApp
return

^!a:: 
MsgBox, 4,, This script uses the blue bar on the Disruption Logics page to see how many stock you have, if its above 1 then the second variable it checks will not be a black pixel. if its under 1/100 then the first one it checks will not be BLUE.`n`n`n To edit this script install autohotkey and launch window spy. Replace the pixel position with the correct pixel to accurately determine 1/100.`n`n Would you like to view a video tutorial? (press Yes or No)
IfMsgBox Yes
Run, https://url.mon5termatt.club/bunkertut
return    

^!f::
PixelGetColor, color1, %p1x%, %py%
PixelGetColor, color2, %p2x%, %py% 
msgbox, its currently %color1% and %color2%
return
