set PATH=C:\Program Files\CMake\bin;%PATH%

set Platform=x86
set Configuration=Debug

rem Qt4.8.6
set QTDIR=G:\sources\contrib\opencascade\3rdParty\qt486-vc14-32

cd ..\..\SCView-vs2017-build

rmdir /s /q %Platform%-%Configuration%
mkdir %Platform%-%Configuration%
cd %Platform%-%Configuration%
cmake.exe -G "Visual Studio 15 2017" -DCMAKE_INSTALL_PREFIX:PATH=%cd%\..\..\SCView-vs2017-install\%Platform%-%Configuration% -DSTEPCODE_ROOT_DIR=%cd%\..\..\stepcode-git-fork -DSCHEMAS=ap203;ap214e3;ifc4 -DSC_BUILD_SCHEMAS=ap203;ap214e3;ifc4 -DCMAKE_CONFIGURATION_TYPES=%Configuration% ..\..\SCView-git-fork
