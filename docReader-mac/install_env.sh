#!/bin/bash

# 切换到脚本所在目录
cd "$(dirname "$0")"

echo "===================================================="
echo "   正在检查 macOS Python 环境并安装依赖库..."
echo "===================================================="

# 1. 检查 Python3 是否安装
if ! command -v python3 &> /dev/null
then
    echo "[错误] 未检测到 python3。请先安装 Python (推荐从 python.org 下载)。"
    exit 1
fi

echo "[1/3] 正在升级 pip3..."
python3 -m pip install --upgrade pip -i https://pypi.tuna.tsinghua.edu.cn/simple

echo "[2/3] 正在安装 Flask, Flask-CORS, Chardet..."
# macOS 有时需要针对用户目录安装，或者在虚拟环境中安装
python3 -m pip install flask flask-cors chardet -i https://pypi.tuna.tsinghua.edu.cn/simple

if [ $? -eq 0 ]; then
    echo "[3/3] 依赖库安装成功！"
    echo "===================================================="
    echo "现在你可以通过运行 ./start_app.sh 来启动程序了。"
    echo "===================================================="
else
    echo "[错误] 安装失败，请检查网络连接或尝试使用 sudo 权限。"
fi
