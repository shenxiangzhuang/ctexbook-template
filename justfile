# ctexbook-template justfile
# 使用方法: just <command>
# 安装 just: https://github.com/casey/just

# 默认命令：编译 PDF
default: build

# 编译 PDF（自动处理多次编译、biber、makeindex）
build:
    latexmk book.tex

# 持续监听文件变化并自动编译
watch:
    latexmk -pvc book.tex

# 清理临时文件（保留 PDF）
clean:
    latexmk -c

# 彻底清理（包括 PDF）
distclean:
    latexmk -C

# 打开 PDF 预览
open:
    xdg-open book.pdf 2>/dev/null || open book.pdf

# 编译并打开预览
preview: build open
