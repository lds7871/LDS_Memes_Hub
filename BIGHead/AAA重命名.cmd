@echo off
setlocal enabledelayedexpansion

REM 初始化计数器
set /a count=1

REM 遍历当前目录下所有 .png 文件
for %%f in (*.png) do (
    REM 构造新的文件名
    set "newname=!count!.png"

    REM 重命名文件
    ren "%%f" "!newname!"

    REM 计数器递增
    set /a count+=1
)

echo 所有 PNG 文件已重命名完成！
pause
