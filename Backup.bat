@echo off
IF NOT EXIST "%LocalAppData%\transmission" GOTO CfgNotFound
ECHO ������transmission����������ļ���������Backup"��
ECHO ��Ҫ��ֹ���ݣ��밴Ctrl+C���������������ʼ����
PAUSE > NUL
IF EXIST ".\Backup" (
	IF EXIST ".\Backup.old" (
		RD /S /Q ".\Backup.old"
	)
	MOVE ".\Backup" ".\Backup.old"
	ECHO ��һ�εı����Ѹ���Ϊ��Backup.old��
)
RoboCopy "%LocalAppData%\transmission" ".\Backup\Local\transmission" /E /NFL /NDL /NC /NS /NP
ECHO ������ɣ������������...
PAUSE > NUL
EXIT

:CfgNotFound
ECHO û���ҵ�transmission�������ļ����޷����б��ݣ������������...
PAUSE > NUL