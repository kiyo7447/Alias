@echo on
@rem set KIYO_WIN="�p�X��ݒ�" REM ���ϐ���ݒ�
for /f "usebackq  eol=# skip=1 tokens=1* delims=:" %%a in ("%KIYO_WIN%\Alias\aliases.txt") do (
    echo "%%a"
    if not "%%a" == "" if not "%%a" == "#" (
        doskey %%a=%%b $*
    )
)

::Windows
doskey c=cls
