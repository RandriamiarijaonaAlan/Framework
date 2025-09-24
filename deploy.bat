@echo off
echo ===== Compilation =====

if not exist out mkdir out

javac -cp "lib\jakarta.servlet-api-5.0.0.jar;." -d out src\main\java\com\myframework\FrontServlet.java

echo ===== Creation du JAR =====
jar cvf framework.jar -C out .

echo ===== Copie vers Test =====
copy framework.jar ..\TestFramework\web\WEB-INF\lib\

echo Done!
