@ECHO OFF
set fName=%1

IF "%~x1" == ".ydr" goto makeYTD
IF "%~x1" == ".yft" goto makeYTD
IF "%~x1" == ".ytd" goto makeYTD
IF "%~x1" == ".ydd" goto makeYTD


		echo msgbox "This file is not a GTA5 native!" > %tmp%\tmp.vbs
		cscript /nologo %tmp%\tmp.vbs
		del %tmp%\tmp.vbs
		goto end
	
:makeYTD
	SETLOCAL ENABLEDELAYEDEXPANSION

	set fName=%1
	if '%1' equ '' set /p fName=Enter file name:


	for /f "tokens=* delims= " %%F in ('echo %fName%') do (
	COPY "%~dp0\resources\ytd.sz" "%%~pF\%%~nF.ytd"
	)
	goto end
	
:end
end