@echo off

REM Display messages and execute commands without showing the commands themselves

REM Start Tomcat
echo Starting Tomcat...
	
start "Tomcat" cmd /c "cd /d D:\CreditX-Sbsolutions\Backend\bin && startup.bat"
echo Tomcat started.

start "Tomcat" cmd /c "cd /d D:\CreditX-Sbsolutions\FileCompBackend\bin && startup.bat"
echo Tomcat started.

REM Start Nginx
echo Starting Nginx...
start "Nginx" cmd /c "cd /d D:\CreditX-Sbsolutions\Frontend && start nginx.exe"
echo Nginx started.

REM Start Nginx
echo Starting Nginx...
start "Nginx" cmd /c "cd /d D:\CreditX-Sbsolutions\FileCompFrontend && start nginx.exe"
echo Nginx started.

REM Start Python Application
echo Starting Python application...
cd /d "D:\CreditX-Sbsolutions\Compressor"
call venv\Scripts\activate.bat
hypercorn compressor:app -b 0.0.0.0:82
start python compressor.py
echo Python application started.

REM Pause to keep the window open
pause
