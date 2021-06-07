@echo off>NUL

echo.
echo.
echo Call for Halp, Halp received
echo.
echo Commands:
echo --------------
echo.
echo   (1) : build DEV    - create a dev space at build/test
echo   (2) : build CLIENT - create a client at build/client (like dev, but without test and local files)
echo   (3) : build SERVER - create a server at build/server (only common and server files)
echo   (c) : clean        - delete the build workspaces
echo   (x) : exit
echo.
CHOICE /C 123CX /M "options: "

if %ERRORLEVEL%==1 (
  gradlew.bat build
)
if %ERRORLEVEL%==2 (
  gradlew.bat packageClient
)
if %ERRORLEVEL%==3 (
  gradlew.bat packageServer
)
if %ERRORLEVEL%==4 (
  gradlew.bat clean
)
if %ERRORLEVEL%==5 (
  echo Goodbye
  pause
)