@ECHO OFF

SETLOCAL

SET RSYNC_HOME=%chocolateyInstall%\lib\rsync\cwRsync_5.5.0_x86_Free
SET PATH=%RSYNC_HOME%\bin;%PATH%

IF NOT DEFINED HOME SET HOME=%USERPROFILE%

ssh-keygen %*
