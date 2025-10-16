#!/bin/bash
# 本地预览网站脚本

echo "🌐 启动本地预览服务器..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📁 目录: $(pwd)"
echo "🔗 访问地址: http://localhost:8000"
echo ""
echo "提示:"
echo "  • 在浏览器打开: http://localhost:8000"
echo "  • 如果是远程服务器，使用SSH端口转发:"
echo "    ssh -L 8000:localhost:8000 user@server"
echo ""
echo "按 Ctrl+C 停止服务器"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# 启动Python HTTP服务器
python3 -m http.server 8000

