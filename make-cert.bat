@echo off

echo type "generer" or "quitter"

:P
set /p ACTION="Enter le type d'action: "

if "%ACTION%"=="g" (
	set OPENSSL_PATH="C:\Program Files\OpenSSL-Win64\bin"

	for /f "delims=" %%x in (.\FQDN.txt) do (
		setlocal EnableDelayedExpansion

		if not exist .\certificates\%%x mkdir .\certificates\%%x

		%OPENSSL_PATH%\openssl.exe req -config .\cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout .\certificates\%%x\private.key -x509 -days 365 -out .\certificates\%%x\server.crt
	)

	echo.
	echo -----
	echo The certificate was provided.
)

rem Quitter
if "%ACTION%"=="q" exit /b

goto P