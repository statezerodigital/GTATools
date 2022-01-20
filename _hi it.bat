@ECHO OFF
set fName=%1

IF "%~x1" == ".ydr" goto copyYDR
IF "%~x1" == ".yft" goto copyYDR
IF "%~x1" == ".ytd" goto copyYTD

		echo msgbox "This file is not a GTA5 native!" > %tmp%\tmp.vbs
		cscript /nologo %tmp%\tmp.vbs
		del %tmp%\tmp.vbs
		goto end
	
:copyYDR
	SETLOCAL ENABLEDELAYEDEXPANSION

	set fName=%1
	if '%1' equ '' set /p fName=Enter file name:


	for /f "tokens=* delims= " %%F in ('echo %fName%') do (
	COPY "%%~F" "%%~nF_hi%%~xF"
	)
	goto end
	
:copyYTD 
	SETLOCAL ENABLEDELAYEDEXPANSION

	set fName=%1
	if '%1' equ '' set /p fName=Enter file name:


	for /f "tokens=* delims= " %%F in ('echo %fName%') do (
	COPY "%%~F" "%%~nF+hi%%~xF"
	)
	goto end
	
:end
end