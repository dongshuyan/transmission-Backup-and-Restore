@echo off
IF NOT EXIST ".\Backup" GOTO SearchBakOld
ECHO �����ӡ�Backup���лָ�transmission�������
ECHO ��Ҫֹͣ��ԭ���밴Ctrl+C���������������ʼ��ԭ
PAUSE > NUL
IF EXIST "%LocalAppData%\transmission" (
	RD /S /Q  "%LocalAppData%\transmission"
)
RoboCopy ".\Backup\Local\transmission" "%LocalAppData%\transmission" /E /NFL /NDL /NC /NS /NP
ECHO �ɹ��ӡ�Backup����ԭ���ã������������...
PAUSE > NUL
EXIT

:SearchBakOld
IF NOT EXIST ".\Backup.old" GOTO BakNotFound
ECHO �����ӡ�Backup.old���лָ�transmission�������
ECHO ��Ҫֹͣ��ԭ���밴Ctrl+C���������������ʼ��ԭ
PAUSE > NUL
IF EXIST "%LocalAppData%\transmission" (
	RD /S /Q  "%LocalAppData%\transmission"
)
RoboCopy ".\Backup.old\Local\transmission" "%LocalAppData%\transmission" /E /NFL /NDL /NC /NS /NP
ECHO �ɹ��ӡ�Backup.old����ԭ���ã������������...
PAUSE > NUL
EXIT

:BakNotFound
ECHO û�п���ʹ�õı��ݣ���ԭ��ֹ�������������...
PAUSE > NUL
