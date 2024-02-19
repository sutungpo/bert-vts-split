@echo off
chcp 65001
@title 数据集制备工具箱 by 未鸟
set path=.\env\Scripts;.\env\split;.\env\ffmpeg\bin;%path%
echo ==================================================================================================
echo 1.请确定已执行完毕第二步，生成了有效的clean_mapping.list
echo.
echo 2.继续进行将按照你清洗后的映射文件合并短音频片段，并建立新的映射，保存在merge文件夹下，下一步前可以反复执行这一步
echo.
echo 3.输入的最大字符意味着将会自动拼接下一条直到单条达到最大字符数，请注意极端情况下可能导致过长数据出现
echo.
echo 4.新的映射文件将保存为同目录下new_mapping.list，推荐在最终封装前手动检查一下准确性
echo ==================================================================================================
echo.
echo 请输入最大字符限制：
set /p max=
echo.
echo =====开始合并=====
.\env\python.exe merge.py --max %max%
echo =====执行完毕，请注意有无报错=====
pause
