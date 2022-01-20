@ECHO OFF
set fName=%1
	SETLOCAL ENABLEDELAYEDEXPANSION

	set fName=%1
	if '%1' equ '' set /p fName=Enter file name:


	for /f "tokens=* delims= " %%F in ('echo %fName%') do (
	COPY "%~dp0\resources\z3d.sz" "%%~pF\New.z3d"
	)
	goto end
	
:end
end