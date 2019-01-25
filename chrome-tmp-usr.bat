
@rem without quotes:
@set confDirDstPrefix=%TEMP%\chromeUsrData\User Data
@set chomeExe=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe

@set confDirSrc="%~fd0\..\chromeUsrDataTemplate"
@set i=0
:checkUsableFolderName_UseIt
@set /A i+=1
@echo %i%
@set confDirDst="%confDirDstPrefix% %i%"

@mkdir %confDirDst% ^
 && ( title chrome - %USERNAME% - %i%
 echo confDisDst=%confDirDst%
 mkdir %confDirDst%\"SwReporter\VERSION\software_reporter_tool.exe"
 xcopy /e /q %confDirSrc% %confDirDst%\ && "%chomeExe%" --incognito --user-data-dir=%confDirDst% 
 goto mainProcessNotFound_check_lockfile 
 exit /b 1 )
@goto checkUsableFolderName_UseIt
@goto END

:mainProcessNotFound_check_lockfile
@ping -n 2 localhost > nul 
@if exist %confDirDst%\lockfile (
 goto mainProcessNotFound_check_lockfile 
)
@ping -n 2 localhost > nul 
@if exist %confDirDst%\lockfile (
 goto mainProcessNotFound_check_lockfile 
)
@rmdir /s /q %confDirDst% 
@echo directory: %confDirDst% removed
@goto END

:END
@exit /b 0
