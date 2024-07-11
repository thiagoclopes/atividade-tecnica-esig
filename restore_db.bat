@echo off

set DB_NAME=pizzaria
set DB_USER=postgres
set CONTAINER_NAME=postgres_db
set DUMP_FILE=pizzaria_dump.sql

type "%DUMP_FILE%" | docker exec -i %CONTAINER_NAME% psql -U %DB_USER% -d %DB_NAME%

pause
