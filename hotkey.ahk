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

