@echo off
chcp 65001
@title 数据集制备工具箱 by 未鸟
set path=.\env\Scripts;.\env\split;.\env\ffmpeg\bin;%path%
echo ==================================================================================================
echo 1.请确定已执行完毕第一步，没有报错且切分准确
echo.
echo 2.继续进行将按照你的选项清洗数据，这一步将不会修改第一步生成的文件，下一步之前你可以随时修改选项重洗
echo.
echo 3.清洗将会读取同目录下ban.txt并将每一行视为一个ban词，包含便会丢弃该条数据，你可以自行编辑该文件以自定义清洗
echo.
echo 4.清洗后的映射文件将保存于同目录的clean_mapping.list文件中，可以随时确认或手工校正or清洗
echo ==================================================================================================
echo.
echo 是否滤除包含英文（包括字母）的数据？（例：1为是，0为否）
set /p if_english=
echo.
if "%if_english%"=="0" (goto eng)
if "%if_english%"=="1" (goto noeng)

:eng
echo =====保留英文=====
.\env\python.exe clean_list.py
goto done

:noeng
echo =====清洗英文=====
.\env\python.exe clean_list.py --filter_english
goto done

:done
echo =====执行完毕，请注意有无报错=====
pause
