@echo off
title Python 环境安装脚本
echo ====================================================
echo   正在检查 Python 环境并安装依赖库...
echo ====================================================

:: 检查 Python 是否安装
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Python，请先安装 Python 并勾选 "Add Python to PATH"
    pause
    exit /b
)

echo [1/3] 正在升级 pip...
python -m pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple

echo [2/3] 正在安装 Flask, Flask-CORS, Chardet...
pip install flask flask-cors chardet -i https://pypi.tuna.tsinghua.edu.cn/simple

echo [3/3] 依赖库安装完成！
echo ====================================================
echo 现在你可以运行 start_app.bat 来启动程序了。
echo ====================================================
pause