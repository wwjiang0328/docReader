import os
import chardet
import tkinter as tk
from tkinter import filedialog
from flask import Flask, request, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

def read_file_with_encoding(file_path):
    """自动检测编码并读取内容"""
    try:
        with open(file_path, 'rb') as f:
            raw_data = f.read()
            if not raw_data:
                return ""
            det = chardet.detect(raw_data)
            encoding = det['encoding'] if det['encoding'] else 'utf-8'
            return raw_data.decode(encoding, errors='ignore')
    except Exception as e:
        print(f"读取出错 [{file_path}]: {e}")
        return None

@app.route('/api/select_folder', methods=['GET'])
def select_folder():
    """macOS 原生文件夹选择"""
    root = tk.Tk()
    root.withdraw()
    # macOS 下 topmost 有时需要特殊处理，这里保持通用
    root.attributes("-topmost", True)
    folder_path = filedialog.askdirectory()
    root.destroy()
    return jsonify({"path": folder_path if folder_path else ""})

@app.route('/api/select_files', methods=['GET'])
def select_files():
    """macOS 原生文件选择并定位目录"""
    root = tk.Tk()
    root.withdraw()
    root.attributes("-topmost", True)
    file_path = filedialog.askopenfilename()
    root.destroy()
    if file_path:
        folder_path = os.path.dirname(file_path)
        return jsonify({"path": folder_path})
    return jsonify({"path": ""})

@app.route('/api/scan', methods=['POST'])
def scan_directory():
    data = request.json
    root_path = data.get('path', '').strip()
    extensions = [ext.lower() for ext in data.get('extensions', [])]

    if not root_path or not os.path.exists(root_path):
        return jsonify({"error": f"路径不存在: {root_path}"}), 400

    output_text = []
    file_count = 0
    try:
        for root_dir, _, files in os.walk(root_path):
            for file in files:
                if any(file.lower().endswith(ext) for ext in extensions):
                    full_path = os.path.join(root_dir, file)
                    content = read_file_with_encoding(full_path)
                    if content is not None:
                        output_text.append(f"=== 文件: {full_path} ===\n")
                        output_text.append(content)
                        output_text.append("\n\n")
                        file_count += 1
        
        final_content = "".join(output_text)
        return jsonify({"content": final_content, "count": file_count})
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    print("macOS 后端已启动: http://127.0.0.1:12580")
    app.run(port=12580, debug=False)
