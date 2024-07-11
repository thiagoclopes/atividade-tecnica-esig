@echo off
setlocal

set JBOSS_PORT=8080

netstat -ano | findstr ":%JBOSS_PORT%" > nul
if %errorlevel% equ 0 (
    echo JBoss está rodando na porta %JBOSS_PORT%.
    pause
) else (
    echo Verificando se JBoss está parado por 1 minuto...
    timeout /t 30 /nobreak > nul
    netstat -ano | findstr ":%JBOSS_PORT%" > nul
    if %errorlevel% neq 0 (
        echo Iniciando JBoss...
        call "%JBOSS_HOME%\bin\standalone.bat" -c standalone.xml
    ) else (
        echo JBoss foi iniciado durante a espera.
    )

)
