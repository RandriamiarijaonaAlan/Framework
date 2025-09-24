@echo off
echo ===== Compilation =====
javac -d out src/main/java/com/myframework/*.java

echo ===== Creation du JAR =====
jar cvf framework.jar -C out .

echo ===== Copie vers Test =====
copy framework.jar ..\TestFramework\web\WEB-INF\lib\
echo Done!
