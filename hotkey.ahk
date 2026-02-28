#Requires AutoHotkey v2.0


; deletion
!Backspace::Send("+{Home}{Del}") ; backspace line, similar to command + backspace in macOS
^Backspace::Send("^+{Left}{Del}") ; backspace word, similar to ctrl + backspace, ignores whitespace like macOS


; navigation
!Left::Send("{Home}") ; jump to beginning of line, similar to command + left in macOS
!Right::Send("{End}") ; jump to end of line, similar to command + right in macOS


; selection
!+Left::Send("+{Home}") ; select to beginning of line, similar to command + shift + left in macOS
!+Right::Send("+{End}") ; select to end of line, similar to command + shift + right in macOS


; horizontal scrolling
+WheelUp::Send("{WheelLeft}") ; hold shift and scroll up to scroll left on screen
+WheelDown::Send("{WheelRight}") ; hold shift and scroll right to scroll right on screen


; accelerated scrolling
; change number to adjust scroll rate as desired
!WheelUp::send("{WheelUp 5}") ; hold alt and scroll up to scroll faster
!WheelDown::send("{WheelDown 5}") ; hold alt and scroll down to scroll faster

; this performs the same function, except it intercepts alt+scroll wheel from microsoft edge, inhibiting its native behavior
; doing it this way, instead of in edge, keeps the autohotkey bindings portable and plug and play between systems
#HotIf WinActive("ahk_exe msedge.exe")
    $!WheelUp::send (
        "{Alt up}" ; signals that alt is not pressed
        "{WheelUp 5}"
        "{Alt down}"
    )
   
    $!WheelDown::send (
        "{Alt up}"
        "{WheelDown 5}"
        "{Alt down}"
    )
#HotIf
