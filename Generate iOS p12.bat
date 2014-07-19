@ECHO OFF
:: Edit the Open SSL directory, Certificate name, and .pem name here
set OPENSSL_BIN_DIR=C:\OpenSSL-Win32\bin
set CERTIFICATE_NAME=ios_development.cer
set PEM_NAME=developer_identity.pem

ECHO Setting Open SSL bin directory to %OPENSSL_BIN_DIR%
ECHO Setting Certificate name to %CERTIFICATE_NAME%
ECHO Setting .pem name to %PEM_NAME%
ECHO ..........................

cd %OPENSSL_BIN_DIR%
set OPENSSL_CONF=%OPENSSL_BIN_DIR%\openssl.cfg
set RANDFILE=.rnd
PAUSE

:: Generating PEM...
@ECHO ON
openssl x509 -in %CERTIFICATE_NAME% -inform DER -out %PEM_NAME% -outform PEM
@ECHO OFF

:: Edit the Key name and p12 name here
set KEY_NAME=mykey.key 
set P12_NAME=iphone_dev.p12

ECHO Setting key name to %KEY_NAME%
ECHO Setting .p12 name to %P12_NAME%
ECHO ..........................
PAUSE

:: Generating P12...
@ECHO ON
openssl pkcs12 -export -inkey %KEY_NAME% -in %PEM_NAME% -out %P12_Name%
PAUSE