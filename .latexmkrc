# latexmk 配置文件
# 使用方法: latexmk book.tex

# 使用 xelatex 生成 PDF（$pdf_mode = 5 表示 xelatex）
$pdf_mode = 5;

# xelatex 编译选项
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# biber 处理参考文献
$biber = 'biber %O %B';

# makeindex 处理索引
$makeindex = 'makeindex %O -o %D %S';

# 清理时删除的额外文件扩展名
$clean_ext = 'synctex.gz run.xml bbl bcf fdb_latexmk fls xdv';

# 预览器设置（Linux 使用 xdg-open）
$pdf_previewer = 'xdg-open %S';

# 持续编译模式下的预览更新间隔（秒）
$sleep_time = 1;
