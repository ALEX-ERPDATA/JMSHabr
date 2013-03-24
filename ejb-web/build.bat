@echo off
javac -d web\WEB-INF\classes -cp "C:\Program Files (x86)\IBM\WebSphere\AppServer\lib\j2ee.jar";../ejb-core/target/classes -sourcepath src\main\java src\main\java\ru\lukdiman\ejb\web\servlet\*.java
xcopy web target\classes /E /C /I /Q /H /Y
xcopy src\main\resources target\classes /E /C /I /Q /H /Y
cd target\classes
jar cvMf ../ejb-web.war .
cd ../../