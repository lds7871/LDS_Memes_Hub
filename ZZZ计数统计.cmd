@echo off
chcp 65001 >null
setlocal enabledelayedexpansion

:: 需要统计的文件夹名称（用空格分隔）
set folders=BIGHead Memes MoCai

:: 输出文件
set output=资源统计.txt

echo 资源统计结果 > "%output%"
echo ------------------------- >> "%output%"

for %%f in (%folders%) do (
    if exist "%%f" (
        set count=-4

        :: 使用 dir /b /a-d，避免空结果导致 null 文件
        for /f "delims=" %%i in ('dir "%%f" /b /a-d 2^>nul') do (
            set /a count+=1
        )

        echo %%f 文件数量：!count! >> "%output%"
    ) else (
        echo %%f 文件夹不存在 >> "%output%"
    )
)

echo 统计完成，结果已写入 "%output%"
pause