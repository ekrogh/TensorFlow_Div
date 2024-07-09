set PATH=D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC/Tools/MSVC/14.40.33807/bin/Hostx64/x64;D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC/Tools/MSVC/14.40.33807/include;%PATH%
@REM set PATH=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64;%PATH%
set PATH=D:/Program_Files/Python/311;%PATH%
set PATH=D:/Program_Files/Python/311/Scripts;%PATH%
set PYTHON_BIN_PATH=D:\Users\eigil\miniconda3_py311\envs\cppTF\python.exe 
set PYTHON_LIB_PATH=D:\Users\eigil\miniconda3_py311\envs\cppTF\Lib\site-packages
set PYTHON_DIRECTORY=D:\Users\eigil\miniconda3_py311\envs\cppTF\Scripts

set BAZEL_WINSDK_FULL_VERSION=10.0.19041.0
SET INCLUDE=D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC/Tools/MSVC/14.40.33807/include;%INCLUDE%
@REM SET INCLUDE=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133/include;%INCLUDE%
@REM set BAZEL_WINSDK_FULL_VERSION=10.0.26100.0
set BAZEL_SH=D:/Program_Files/msys64/usr/bin/bash.exe 
set BAZEL_VS=D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools
set BAZEL_VC=D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC
@REM set BAZEL_VS=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools
@REM set BAZEL_VC=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133
@REM set BAZEL_VC=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC 
set Bazel_LLVM=D:/Program_Files/LLVM
@REM set PATH=D:/Program_Files/LLVM/bin;%PATH%


.\bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg
