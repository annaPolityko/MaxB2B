@echo off
setlocal EnableDelayedExpansion
chcp 65001
if not exist C:/project/%1 (echo Пожалуйста, укажите верный относительный путь к папке)
for /R C:/project/%1 %%t in (*temp*) do (
set fileName= %%t
set /A counter=0
for /F %%s in (!fileName!) do (
if !counter! lss 5 (
echo %%s >>C:/project/result.txt
set /A counter+=1
)
)
)
endlocal
