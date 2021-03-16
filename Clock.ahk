#SingleInstance, Off

gui 1:Default
gui, +AlwaysOnTop
formattime, dateVar,, h:mm:ss
gui, font, s48
gui, add, text, x25 y25 vTimestamp, %dateVar%
gui, show,, Clock
SetTimer, UpdateTime, 100
return

UpdateTime:
{
    gui 1:Default
    formattime, dateVar,, h:mm:ss
    GuiControl,, Timestamp, %dateVar%
}
return

guiclose:
exit:
{
    exitapp
}
return