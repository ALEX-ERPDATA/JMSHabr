@echo off
xcopy src\main\resources target\classes /E /C /I /Q /H /Y
cd target\classes
jar cvf ../ejb-habr.ear . -C ../../../ejb-core/target ejb-core-websphere.jar -C ../../../ejb-web/target ejb-web.war
cd ../../