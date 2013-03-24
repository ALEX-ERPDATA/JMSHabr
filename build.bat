@echo off
cd ejb-core
call build.bat
cd ..
cd ejb-web
call build.bat
cd ..
cd ejb-ear
call build.bat
cd ..
@pause