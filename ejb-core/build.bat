@echo off
javac -d target\classes -cp "C:\Program Files (x86)\IBM\WebSphere\AppServer\lib\j2ee.jar" -sourcepath src\main\java src\main\java\ru\lukdiman\ejb\core\banking\*.java src\main\java\ru\lukdiman\ejb\core\jmsmessage\*.java
xcopy src\main\resources target\classes /E /C /I /Q /H /Y
cd target\classes
jar cvf ../ejb-core.jar .
call "C:\Program Files (x86)\IBM\WebSphere\AppServer\bin\ejbdeploy.bat" ../ejb-core.jar . ../ejb-core-websphere.jar
cd ../../