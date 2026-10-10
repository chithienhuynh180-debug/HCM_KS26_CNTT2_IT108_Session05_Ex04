@echo off
chcp 65001 >nul

git init
git branch -M main

REM Muon chi add file txt bai lam, khong add nop.bat hay gitignore
git add *.txt

set /p msg=Nhap ten commit: 
if "%msg%"=="" set msg=nop bai tap

git commit -m "%msg%"

set /p s=Nhap so Session: 
set /p e=Nhap so bai Ex: 

if 1%s% LSS 110 set s=0%s%
if 1%e% LSS 110 set e=0%e%

set repo_name=HCM_KS26_CNTT2_IT108_Session%s%_Ex%e%

gh repo create %repo_name% --public --source=. --push --remote=origin || git push -u origin main

pause