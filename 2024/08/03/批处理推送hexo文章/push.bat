@echo off
rem ���ļ���GoldesqueMoON����
:start
cd C:\Users\Administrator\blog
call hexo clean
echo ���������
call hexo g
echo �������
echo ��ʼͬ����վ
call hexo d
echo ----------------
if errorlevel 1 (goto error) else goto success

:error
echo ͬ��ʧ�ܣ���鿴������Ϣ��
choice /m:"�Ƿ����ԣ�"
if errorlevel 2 goto exit
if errorlevel 1 goto start

:exit
timeout 1
exit

:success
echo ͬ���ɹ�
pause