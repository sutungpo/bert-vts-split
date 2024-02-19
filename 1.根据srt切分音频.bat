@echo off
chcp 65001
@title 数据集制备工具箱 by 未鸟
set path=.\env\Scripts;.\env\split;.\env\ffmpeg\bin;%path%
echo ==================================================================================================
echo 1.请确定已经将wav和同名的srt文件放入了input文件夹中，不是改后缀就是转格式！
echo.
echo 2.默认的输出格式为44100Hz，单声道，16位wav，你可以执行split.py -h 查看更多参数用法
echo.
echo 3.继续进行将按照srt切割对应wav，并将结果存于output文件夹中且建立mapping.list存储音频-文本映射关系
echo.
echo 4.如果遇见切分不准，请首先检查srt文件的准确性，已知生成srt后再对音频转格式会造成切割严重错位！
echo ==================================================================================================
echo.
set /p P=按回车键继续
echo.
echo =====开始处理,若文件较大读取会比较慢请耐心等待=====
echo.
.\env\python.exe split.py --mono
echo.
echo =====执行完毕，请注意有无报错=====
pause
