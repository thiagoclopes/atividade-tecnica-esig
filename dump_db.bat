@echo off

set DB_NAME=pizzaria
set DB_USER=postgres
set CONTAINER_NAME=postgres_db
set DUMP_FILE=pizzaria_dump.dump

docker exec -t %CONTAINER_NAME% pg_dump -U %DB_USER% -d %DB_NAME% > %DUMP_FILE%

pause
