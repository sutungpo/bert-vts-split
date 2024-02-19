@echo off
chcp 65001
@title 数据集制备工具箱 by 未鸟
set path=.\env\Scripts;.\env\split;.\env\ffmpeg\bin;%path%
echo ==================================================================================================
echo 1.请确定已执行完毕第三步，且生成结果检查无误
echo.
echo 2.继续进行将会把目前的数据打包为一个较为标准且可以直接用于bert-vits2项目的格式
echo.
echo 3.打包好的文件输出在dataset内，确认完毕后所有的中间件(output merge文件夹等)皆可删除以节省磁盘空间
echo.
echo 4.映射关系将存储为同目录下dataset_mapping.list，你也可方便的自行转换为你所需的格式
echo ==================================================================================================
echo.
echo 请输入说话人名（仅支持纯英文数字组合）：
set /p name=
echo.
echo =====开始打包=====
.\env\python.exe pack.py %name%
echo =====执行完毕，请注意有无报错=====
pause
