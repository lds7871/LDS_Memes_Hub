@echo off
setlocal enabledelayedexpansion

set /a count=1

REM 第一步：先加前缀，避免和已有数字文件冲突
for %%f in (*.png *.PNG) do (
    ren "%%f" "temp_!count!.png"
    set /a count+=1
)

REM 第二步：再去掉前缀，得到连续编号
set /a count=1
for %%f in (temp_*.png) do (
    ren "%%f" "!count!.png"
    set /a count+=1
)

echo 所有 PNG 文件已重命名完成！
pause
