@echo off
REM 批量把当前目录下的图片扩展名改为 .png
for %%i in (*.jpg *.jpeg *.webp *.bmp) do (
    echo 正在改名 %%i ...
    ren "%%i" "%%~ni.png"
)

echo 全部改名完成！
pause
