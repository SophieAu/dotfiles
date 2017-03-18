;File has UTF-8 with BOM encoding to work with Umlauts and stuff
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



;Program Shortcuts
#s:: Run, %A_Appdata%\Spotify\spotify.exe
#e:: Run, Explorer C:\Users\Sophie\Downloads

#f::
IfWinNotExist, ahk_class MozillaWindowClass
	Run, firefox.exe
IfWinExist ahk_class MozillaWindowClass
	WinActivate, ahk_class MozillaWindowClass
Return

#g::
IfWinNotExist, ahk_exe GitHub.exe
	Run, %A_Appdata%\..\Local\GitHub\GitHub.appref-ms
IfWinExist ahk_exe GitHub.exe
	WinActivate, ahk_exe GitHub.exe
Return

#c::
IfWinNotExist ahk_exe eclipse.exe
	Run, C:\eclipse\eclipse.exe
IfWinExist ahk_exe eclipse.exe
	WinActivate, ahk_exe, eclipse.exe
Return

;create new text file
#n:: 
IfWinNotExist ahk_exe sublime_text.exe
	Run, "C:\Program Files\Sublime Text 3\sublime_text.exe"
IfWinExist ahk_exe sublime_text.exe
	WinActivate, ahk_exe sublime_text.exe
WinWaitActive, [ ahk_exe sublime_text.exe, , 1, , ]
Send, ^n
Return



;Global text replacement
#IfWinActive
:*:teh ::the{Space}
:*:Teh ::The{Space}

; Time Stamps
:*:_tt::
	FormatTime, timeOnly,, HH:mm
	Send %timeOnly%
	Return
:*:_dd::
	FormatTime, dateOnly,, yyyy-MM-dd
	Send %dateOnly%
	Return
:*:_dt::
	Gosub, :*:_dd
	Send, {Space}
	Gosub :*:_tt
	Return



;Email formulas
#IfWinActive ahk_class MozillaWindowClass
	:*:_mfg::Mit freundlichen Grüßen,{enter}Sophie Au
	:*:_vmfg::Mit freundlichen Grüßen,{enter}Solvejg Au
	:*:_vg::Viele Grüße,{enter}Sophie Au
	:*:_vvg::Viele Grüße,{enter}Solvejg Au
	:*:_bw::Best Wishes,{enter}Sophie Au
	:*:_kr::Kind Regards,{enter}Sophie Au
	:*:_lg::Liebe Grüße,{Enter}Sophie
	:*:_lfg::Liebe Grüße,{Enter}Solvi
	:*:_llg::Liebe Grüße,{Enter}Solvejg

;Regularly used Websites
	::gmail::mail.google.com{Enter}
	::gcal::calendar.google.com{Enter}
	::pmail::mail.protonmail.com{Enter}
	::ghub::github.com{Enter}
	::pomo::moosti.com{Enter}
	::skype::web.skype.com{Enter}
	::reddit::https://www.reddit.com/new{Enter}

;my email addresses
	:*?:@g::@gmail.com


;Coding
#IfWinActive ahk_exe eclipse.exe
	:*:mainme ::public static void main(String[] args){{}
	::@ov::@Override

#IfWinActive ahk_exe sublime_text.exe
	:*:mainme ::public static void main(String[] args){{}
	F5::GoSub :*:_dt
	^!b::Send, {Tab}*{Space}



;LaTeX TextExpander
#IfWinActive ahk_exe TeXstudio.exe
	:*?c:ä::"a
	:*?c:Ä::"A
	:*?c:ö::"o
	:*?c:Ö::"O
	:*?c:ü::"u
	:*?c:Ü::"U
	:*?:ß::"s
	:*?:"::"{{}{}} ;need to escape because it's used for the umlauts
	:*:\no ::\vspace{}\baselineskip{Right}\noindent{Space}
	:*:\ul ::\underline{}\smash{Down}{Enter}
	:*:\ttt ::\texttt{}{Enter}
	:*:\sect ::\section{}{Enter}
	:*:\sub ::\subsection{}{Enter}
	:*:\subs ::\subsubsection{}{Enter}
	:*:\defa ::\def{Escape}\arraystretch{Escape}{{}1.5{}}
	:*:\rat ::$\rightarrow{Enter}${Space}
	:*:\ram ::\rightarrow{Enter}{Space}
	:*:\img ::\begin{Enter}center{Right}{Down}{Control Down}{BackSpace}{BackSpace}{Control Up}\includegraphics[width=0.6\textwidth]{{}{}}{Left}
	:*:\wimg ::\begin{Enter}wrapfigure{right}{{}r{}}{{}0.4\textwidth{}}{Down}{Control Down}{BackSpace}{BackSpace}{Control Up}\vspace{Enter}-20pt{Right}{Enter}\begin{Enter}center{Right}{Down}{Control Down}{BackSpace}{BackSpace}{Control Up}\includegraphics[width=0.4\textwidth]{{}{}}{Down}{Enter}\vspace{Enter}-20pt{Right}{Right}{Up}{Up}{Left}{Left}




;For text replacement with longer texts, taken from https://stackoverflow.com/questions/27396116/insert-long-text-faster
;::li:: ClipSaved := ClipboardAll ; save clipboard
;clipboard = Lorem ipsum dolor ...
;; ClipWait
;Send, ^v
;clipboard := ClipSaved ; restore original clipboard
;return
