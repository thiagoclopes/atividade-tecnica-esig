@echo off
setlocal

set TOMCAT_PORT=8081

netstat -ano | findstr ":%TOMCAT_PORT%" > nul
if %errorlevel% equ 0 (
    echo Tomcat ta rodando com PID 30696
    pause
) else (
    echo Verificando se Tomcat está parado por 1 minuto...
    timeout /t 60 /nobreak > nul
    netstat -ano | findstr ":%TOMCAT_PORT%" > nul
    if %errorlevel% neq 0 (
        echo Iniciando Tomcat...
        call "%CATALINA_HOME%\bin\startup.bat"
    ) else (
        echo Tomcat foi iniciado durante a espera.
    )
)