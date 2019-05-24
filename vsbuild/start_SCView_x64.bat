@title Æô¶¯vs2017¸½´øosg-3.6.2
@echo off

:start

set STEPCODE_DIR=G:\sources\MyProjects\stepcode\stepcode-vs2017-install


set "PATH=%PATH%;%ProgramFiles(x86)%\Microsoft Visual Studio\Installer"
for /f "usebackq delims=" %%i in (`vswhere.exe -version "[15.0,15.99]" -requires Microsoft.VisualStudio.Workload.NativeDesktop -property installationPath`) do (
    set "DevEnvDir=%%i\Common7\IDE\"
  )

:end
    start "" "%DevEnvDir%\devenv.exe" SCView.sln
    @echo on
    exit
