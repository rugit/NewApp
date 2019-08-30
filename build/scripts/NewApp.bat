@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  NewApp startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and NEW_APP_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\NewApp-0.0.1-SNAPSHOT.jar;%APP_HOME%\lib\spring-boot-starter-data-rest-1.5.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-1.5.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-1.5.7.RELEASE.jar;%APP_HOME%\lib\spring-data-rest-webmvc-2.6.7.RELEASE.jar;%APP_HOME%\lib\jackson-databind-2.8.10.jar;%APP_HOME%\lib\spring-data-rest-core-2.6.7.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.8.10.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-1.5.7.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-5.3.5.Final.jar;%APP_HOME%\lib\spring-hateoas-0.23.0.RELEASE.jar;%APP_HOME%\lib\spring-webmvc-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-web-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-1.5.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-1.5.7.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-1.5.7.RELEASE.jar;%APP_HOME%\lib\spring-plugin-core-1.2.0.RELEASE.jar;%APP_HOME%\lib\spring-context-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-aop-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-tx-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-1.13.7.RELEASE.jar;%APP_HOME%\lib\spring-beans-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-expression-4.3.11.RELEASE.jar;%APP_HOME%\lib\spring-core-4.3.11.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.17.jar;%APP_HOME%\lib\jackson-core-2.8.10.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.25.jar;%APP_HOME%\lib\logback-classic-1.1.11.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\log4j-over-slf4j-1.7.25.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.20.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.20.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.20.jar;%APP_HOME%\lib\validation-api-1.1.0.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.0.Final.jar;%APP_HOME%\lib\classmate-1.3.1.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\evo-inflector-1.2.2.jar;%APP_HOME%\lib\logback-core-1.1.11.jar

@rem Execute NewApp
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %NEW_APP_OPTS%  -classpath "%CLASSPATH%" com.example.NewApp.NewAppApplication %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable NEW_APP_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%NEW_APP_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
