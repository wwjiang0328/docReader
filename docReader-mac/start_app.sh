#!/bin/bash

# 切换到脚本所在目录
cd "$(dirname "$0")"

echo "===================================================="
echo "   正在启动后端服务 (12580) 和前端界面 (13616)..."
echo "===================================================="

# 1. 启动 Python 后端 (后台运行)
python3 app.py &

# 等待 2 秒
sleep 2

# 2. 启动本地 Web 服务器并打开浏览器
echo "正在启动本地 Web 服务器 (http://localhost:13616)..."
open "http://localhost:13616/reader.html"
python3 -m http.server 13616
