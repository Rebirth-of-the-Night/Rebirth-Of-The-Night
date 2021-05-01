for /F "tokens=*" %%A in (clientonly.txt) do del "*%%A*.jar"
pause