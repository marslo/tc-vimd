EVERYTHING:
    global everythingpath:="C:\Marslo\MyProgramFiles\Everything\Everything.exe"
    global everything2exec="C:\Marslo\MyProgramFiles\Vim\vim74\gvim.exe"

    vim.Comment("<EVERYTHING_打开路径>","EVERYTHING_打开路径")
    vim.comment("<EVERYTHING_复制完整路径>","EVERYTHING_复制完整路径")
    vim.comment("<EVERYTHING_按名称排序>","EVERYTHING_按名称排序")
    vim.comment("<EVERYTHING_按更新时间排序>","EVERYTHING_按更新时间排序")
    vim.comment("<EVERYTHING_按路径排序>","EVERYTHING_按路径排序")
    vim.comment("<EVERYTHING_按类型排序>","EVERYTHING_按类型排序")
    vim.comment("<EVERYTHING_按运行次数排序>","EVERYTHING_按运行次数排序")

    ; vim.SetWin("EVERYTHING", , "Everything.exe")
    vim.SetWin("EVERYTHING", "EVERYTHING", "")
    vim.mode("normal","EVERYTHING")
    vim.map("i","<Insert_Mode_EVERYTHING>","EVERYTHING")

    vim.map("?a","<EVERYTHING_排序>","EVERYTHING")
    vim.map("?s","<EVERYTHING_搜索>","Everything")
    vim.map("?.","<EVERYTHING_搜索文件大小>","Everything")
    vim.map("?g","<EVERYTHING_跳转控件>","Everything")
    vim.map("?o","<EVERYTHING_打开>","Everything")
    vim.map("?y","<EVERYTHING_复制>","Everything")

    vim.map("op","<EVERYTHING_打开路径>","EVERYTHING")

    vim.map("yp","<EVERYTHING_复制完整路径>","EVERYTHING")

    vim.map("sx","<EVERYTHING_搜索内容>","Everything")
    vim.map("su","<EVERYTHING_搜索音频>","Everything")
    vim.map("sn","<EVERYTHING_搜索清除>","EVERYTHING")
    vim.map("sz","<EVERYTHING_搜索压缩>","EVERYTHING")
    vim.map("sd","<EVERYTHING_搜索文档>","EVERYTHING")
    vim.map("se","<EVERYTHING_搜索可执行>","EVERYTHING")
    vim.map("sf","<EVERYTHING_搜索文件夹>","EVERYTHING")
    vim.map("si","<EVERYTHING_搜索文件>","EVERYTHING")
    vim.map("sp","<EVERYTHING_搜索图像>","EVERYTHING")
    vim.map("sv","<EVERYTHING_搜索视频>","EVERYTHING")
    vim.map("s1","<EVERYTHING_搜索一级父文件夹>","EVERYTHING")
    vim.map("s2","<EVERYTHING_搜索二级父文件夹>","EVERYTHING")
    vim.map("s3","<EVERYTHING_搜索三级父文件夹>","EVERYTHING")


    vim.map(".t","<EVERYTHING_搜索文件大小10K>","EVERYTHING")
    vim.map(".s","<EVERYTHING_搜索文件大小100K>","EVERYTHING")
    vim.map(".m","<EVERYTHING_搜索文件大小1M>","EVERYTHING")
    vim.map(".l","<EVERYTHING_搜索文件大小16M>","EVERYTHING")
    vim.map(".g","<EVERYTHING_搜索文件大小128M>","EVERYTHING")




    vim.map("ai","<EVERYTHING_按名称排序>","EVERYTHING")
    vim.map("au","<EVERYTHING_按更新时间排序>","EVERYTHING")
    vim.map("ap","<EVERYTHING_按路径排序>","EVERYTHING")
    vim.map("at","<EVERYTHING_按类型排序>","EVERYTHING")
    vim.map("ac","<EVERYTHING_按运行次数排序>","EVERYTHING")
    vim.map("as","<EVERYTHING_按尺寸排序>","EVERYTHING")
    vim.map("ae","<EVERYTHING_按扩展名排序>","EVERYTHING")
    ;导航
    vim.map("ge","<EVERYTHING_跳转至搜索框>","EVERYTHING")
    vim.map("<ctrl>l","<EVERYTHING_跳转至搜索框>","EVERYTHING")
    vim.map("gl","<EVERYTHING_跳转至搜索列表>","EVERYTHING")

    vim.map("j","<EVERYTHING_向下>","EVERYTHING")
    vim.map("k","<EVERYTHING_向上>","EVERYTHING")
    vim.map("J","<EVERYTHING_向下选择>","EVERYTHING")
    vim.map("K","<EVERYTHING_向上选择>","EVERYTHING")
    vim.map("gg","<EVERYTHING_移动到第一行>","EVERYTHING")
    vim.map("G","<EVERYTHING_移动到最后行>","EVERYTHING")
    vim.map("e","<EVERYTHING_使用指定程序打开>","EVERYTHING")

    vim.map("0","<0>","EVERYTHING")
    vim.map("1","<1>","EVERYTHING")
    vim.map("2","<2>","EVERYTHING")
    vim.map("3","<3>","EVERYTHING")
    vim.map("4","<4>","EVERYTHING")
    vim.map("5","<5>","EVERYTHING")
    vim.map("6","<6>","EVERYTHING")
    vim.map("7","<7>","EVERYTHING")
    vim.map("8","<8>","EVERYTHING")
    vim.map("9","<9>","EVERYTHING")
    ;vim.map("f","<运行且激活程序Everything>","EVERYTHING")
    ;vim.map("<lwin>f","<ToggleEverything>")
    vim.map("<F1>","<ToggleEverything>")

    vim.mode("insert","EVERYTHING")
    vim.map("<esc>","<Normal_Mode_EVERYTHING>","EVERYTHING")


    vim.mode("normal","EVERYTHING")
    ;gosub,<normalmode_LED1>
Return

EVERYTHING_CheckMode()
{
	ControlGetFocus,ctrl,ahk_class EVERYTHING
	;MsgBox,%ctrl%
	If RegExMatch(ctrl,"Edit12")
	;CoordMode,Caret,Window
	;ToolTip, X%A_CaretX% Y%A_CaretY%, A_CaretX, A_CaretY - 20
	;If A_CaretX>10
		return True
	return False
}


;快捷键设定为Win+f



<Normal_Mode_EVERYTHING>:
    Send,{Esc}
    vim.Mode("normal","EVERYTHING")
;    gosub,<normalmode_LED1>
    ;emptymem()
return
; <insert_TC> {{{1
<Insert_Mode_EVERYTHING>:
    vim.Mode("insert","EVERYTHING")
;    gosub,<insertmode_LED1>
return

; <mode_window_EVERYTHING>:
;     vim.mode("window","EVERYTHING")
;     gosub,<windowmode_LED1>
; return


;移动
<EVERYTHING_向下>:
	Send,{Down}
return
<EVERYTHING_向上>:
	Send,{Up}
return
<EVERYTHING_向下选择>:
	Send,+{Down}
return
<EVERYTHING_向上选择>:
	Send,+{Up}
return
<EVERYTHING_移动到第一行>:
	Send,{home}
return
<EVERYTHING_移动到最后行>:
	Send,{end}
return

;其它
<EVERYTHING_使用指定程序打开>:
	ClipSaved := ClipboardAll
	Clipboard =
	Sendinput ^c
	While(!Clipboard)
	{
		ClipWait,0.1,1
		If A_Index > %MaxTimeWait%
			Break
	}
	Select = %Clipboard% ; 强制转换为纯文本
	IsFile := DllCall("IsClipboardFormatAvailable","int",15)
	Clipboard := ClipSaved
	ClipSaved =
	If IsFile
	{
		If RegExMatch(Select,"\n")
		{
			Loop,Parse,Select,`n,`r
			{
				Run, %everything2exec% "%A_LoopField%" ,,UseErrorLevel
			}
		}
		Else
				Run, %everything2exec% "%Select%" ,,UseErrorLevel
		If ErrorLevel
			msgbox 请修改 vimd 所在目录下 `nplugins\everything\everything.ahk `n中的global everything2exec的值
	}
return

<EVERYTHING_复制完整路径>:
{
	send,^+!c
return
}

<EVERYTHING_打开路径>:
{
	send,^{Enter}
return
}
;导航
<EVERYTHING_跳转至搜索框>:
{
    send,{F3}
return
}

<EVERYTHING_跳转至搜索列表>:
{
    ControlFocus, EVERYTHING_LISTVIEW1,ahk_class EVERYTHING
return
}

;搜索

<EVERYTHING_搜索内容>:
{
    InputBox,Content,输入搜索词
    gosub,<ToggleEverything>
    WinWaitActive, ahk_class EVERYTHING
    ControlGetText, OutputVar,Edit1,ahk_class EVERYTHING
    ControlSetText, Edit1,%OutputVar% %Content%,ahk_class EVERYTHING
    ControlFocus, Edit1,ahk_class EVERYTHING

    send,{enter}
    return
}

<EVERYTHING_搜索清除>:
{
    ;InputBox, Content,输入搜索词
    gosub,<ToggleEverything>
    WinWaitActive, ahk_class EVERYTHING
    ControlSetText, Edit1,,ahk_class EVERYTHING
    ControlFocus, Edit1,ahk_class EVERYTHING
    send,{enter}
    return
}

<EVERYTHING_搜索音频>:
{
    EVERYTHING_搜索("audio:")
    return
}



<EVERYTHING_搜索压缩>:
{
    EVERYTHING_搜索("zip:")
    return
}

<EVERYTHING_搜索文档>:
{
    EVERYTHING_搜索("doc:")
    return
}

<EVERYTHING_搜索可执行>:
{
    EVERYTHING_搜索("exe:")
    return
}

<EVERYTHING_搜索文件夹>:
{
    EVERYTHING_搜索("folder:")
    return
}

<EVERYTHING_搜索文件>:
{
    EVERYTHING_搜索("file:")
    return
}

<EVERYTHING_搜索图像>:
{
    EVERYTHING_搜索("pic:")
    return
}

<EVERYTHING_搜索视频>:
{
    EVERYTHING_搜索("video:")
    return
}

<EVERYTHING_搜索文件大小10K>:
{
    EVERYTHING_搜索("size:tiny")
    return
}

<EVERYTHING_搜索文件大小100K>:
{
    EVERYTHING_搜索("size:small")
    return
}

<EVERYTHING_搜索文件大小1M>:
{
    EVERYTHING_搜索("size:medium")
    return
}

<EVERYTHING_搜索文件大小16M>:
{
    EVERYTHING_搜索("size:large")
    return
}

<EVERYTHING_搜索文件大小128M>:
{
    EVERYTHING_搜索("size:gigantic")
    return
}

<EVERYTHING_搜索一级父文件夹>:
{
    EVERYTHING_搜索("parents:1")
    return
}

<EVERYTHING_搜索二级父文件夹>:
{
    EVERYTHING_搜索("parents:2")
    return
}

<EVERYTHING_搜索三级父文件夹>:
{
    EVERYTHING_搜索("parents:3")
    return
}



EVERYTHING_搜索(Filter)
{
    ;InputBox, Content,输入搜索词
    gosub,<ToggleEverything>
    WinWaitActive, ahk_class EVERYTHING
    ControlGetText, OutputVar,Edit1,ahk_class EVERYTHING
    ;msgbox,%OutputVar%
    IfInString, OutputVar, %Filter%
        {
        StringReplace, OutputVar,OutputVar, %Filter% ,,
        ControlSetText, Edit1,%OutputVar%,ahk_class EVERYTHING
        }
    else
        ControlSetText, Edit1,%OutputVar% %Filter%,ahk_class EVERYTHING
    ControlFocus, Edit1,ahk_class EVERYTHING
    send,{enter}
    return
}

; <EVERYTHING_搜索内容>:
; {
;      EVERYTHING_搜索("","全部")
;     return
; }

; <EVERYTHING_搜索清除>:
; {
;     ;InputBox, Content,输入搜索词
;     gosub,<ToggleEverything>
;     WinWaitActive, ahk_class EVERYTHING
;     ControlSetText, Edit1,,ahk_class EVERYTHING
;     ControlFocus, Edit1,ahk_class EVERYTHING
;     send,{enter}
;     return
; }

; <EVERYTHING_搜索音频>:
; {
;     EVERYTHING_搜索("fu:","音频")
;     return
; }



; <EVERYTHING_搜索压缩>:
; {
;     EVERYTHING_搜索("fz:","压缩文件")
;     return
; }

; <EVERYTHING_搜索文档>:
; {
;     EVERYTHING_搜索("fd:","文档")
;     return
; }

; <EVERYTHING_搜索可执行>:
; {
;     EVERYTHING_搜索("fe:","EXE")
;     return
; }

; <EVERYTHING_搜索文件夹>:
; {
;     EVERYTHING_搜索("folder:","文件夹")
;     return
; }

; <EVERYTHING_搜索文件>:
; {
;     EVERYTHING_搜索("file:","文件")
;     return
; }

; <EVERYTHING_搜索图像>:
; {
;     EVERYTHING_搜索("fp:","图片")
;     return
; }

; <EVERYTHING_搜索视频>:
; {
;     EVERYTHING_搜索("fv:","视频")
;     return
; }

; <EVERYTHING_搜索文件大小10K>:
; {
;     EVERYTHING_搜索("size:tiny","微小文件10K")
;     return
; }

; <EVERYTHING_搜索文件大小100K>:
; {
;     EVERYTHING_搜索("size:small","小小文件100K")
;     return
; }

; <EVERYTHING_搜索文件大小1M>:
; {
;     EVERYTHING_搜索("size:medium","中小文件1M")
;     return
; }

; <EVERYTHING_搜索文件大小16M>:
; {
;     EVERYTHING_搜索("size:large","大文件16M")
;     return
; }

; <EVERYTHING_搜索文件大小128M>:
; {
;     EVERYTHING_搜索("size:gigantic","特大文件128M")
;     return
; }

; <EVERYTHING_搜索一级父文件夹>:
; {
;     EVERYTHING_搜索("parents:1","1级别文件夹")
;     return
; }

; <EVERYTHING_搜索二级父文件夹>:
; {
;     EVERYTHING_搜索("parents:2","2级别文件夹")
;     return
; }

; <EVERYTHING_搜索三级父文件夹>:
; {
;     EVERYTHING_搜索("parents:3","3级文件夹")
;     return
; }



; EVERYTHING_搜索(Filter,title)
; {
;     InputBox, Content,搜索: %title%
;     if Content!=
;     {
;     gosub,<ToggleEverything>
;     WinWaitActive, ahk_class EVERYTHING
;     ControlGetText, OutputVar,Edit1,ahk_class EVERYTHING

;     IfInString, OutputVar, %Filter% and Filter!=
;         {
;             MsgBox,in
;             StringReplace, OutputVar,OutputVar, %Filter% ,,
;             ControlSetText, Edit1,%OutputVar%,ahk_class EVERYTHING
;         }
;     else
;         ControlSetText, Edit1,%OutputVar% %Filter% %Content%,ahk_class EVERYTHING

;     ControlFocus, Edit1,ahk_class EVERYTHING
;     send,{enter}
;     }
;     return
; }



;排序
<EVERYTHING_按名称排序>:
{
	send,^1
return
}

<EVERYTHING_按更新时间排序>:
{
	send,^6
return
}

<EVERYTHING_按路径排序>:
{
	send,^2
return
}

<EVERYTHING_按类型排序>:
{
	send,^5
return
}


<EVERYTHING_按尺寸排序>:
{
    send,^3
return
}

<EVERYTHING_按扩展名排序>:
{
    send,^4
return
}

<EVERYTHING_按运行次数排序>:
{
	send,^+!1
return
}



; <运行且激活程序Everything>:
; {
; DetectHiddenWindows, on
; IfWinNotExist ahk_class EVERYTHING
;     Run c:\Program Files\Everything\Everything.exe
; Else
; IfWinNotActive ahk_class EVERYTHING
; WinActivate
; Else
; WinMinimize
; Return
; }

<ToggleEverything>:
    IfWinExist,ahk_class EVERYTHING
        WinActivate,ahk_class EVERYTHING
    Else
        Run,%Everythingpath%
    Loop,4
    {
        IfWinNotActive,ahk_class EVERYTHING
            WinActivate,ahk_class EVERYTHING
        Else
            Break
        Sleep,500
    }
    ;emptymem()
return



<EVERYTHING_跳转控件>:
{
    SendLevel,1
    Send,g
    return
}

<EVERYTHING_排序>:
{
    SendLevel,1
    Send,a
    return
}


<EVERYTHING_搜索>:
{
    SendLevel,1
    Send,s
    return
}

<EVERYTHING_搜索文件大小>:
{
    SendLevel,1
    Send,.
    return
}

<EVERYTHING_打开>:
{
    SendLevel,1
    Send,o
    return
}

<EVERYTHING_复制>:
{
    SendLevel,1
    Send,y
    return
}
