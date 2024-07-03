set PATH=D:/Program_Files/Python/311;%PATH%
set PATH=D:/Program_Files/Python/311/Scripts;%PATH%
@REM set PYTHON_BIN_PATH=path/to/python_virtualenv/Scripts/python.exe 
@REM set PYTHON_LIB_PATH=path/to/python virtualenv/lib/site-packages 
@REM set PYTHON_DIRECTORY=path/to/python_virtualenv/Scripts 

set BAZEL_WINSDK_FULL_VERSION=10.0.19041.0
SET INCLUDE=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133/include;%INCLUDE%
@REM set BAZEL_WINSDK_FULL_VERSION=10.0.26100.0
set BAZEL_SH=D:/Program_Files/msys64/usr/bin/bash.exe 
set BAZEL_VS=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools
@REM set BAZEL_VC=D:\Program_Files\Microsoft_Visual_Studio\2019\BuildTools\VC\Tools\MSVC\14.29.30133
set BAZEL_VC=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC 
@REM set Bazel_LLVM=D:/Program_Files/LLVM
@REM set PATH=D:/Program_Files/LLVM/bin;%PATH%

bazel build --config=opt --config=cuda --copt=["-Iinclude"] --define=no_tensorflow_py_deps=true //tensorflow/tools/pip_package:build_pip_package --define=no_tensorflow_py_deps=true --copt=-nvcc_options=disable-warnings
