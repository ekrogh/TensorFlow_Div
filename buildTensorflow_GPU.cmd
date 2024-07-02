set PATH=D:/Program_Files/Python/311:%PATH%
set PATH=D:/Program_Files/Python/311/Scripts:%PATH%
@REM set PYTHON_BIN_PATH=path/to/python_virtualenv/Scripts/python.exe 
@REM set PYTHON_LIB_PATH=path/to/python virtualenv/lib/site-packages 
@REM set PYTHON_DIRECTORY=path/to/python_virtualenv/Scripts 

set BAZEL_SH=D:/Program_Files/msys64/usr/bin/bash.exe 
set BAZEL_VS=D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools
set BAZEL_VC=D:/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC 
set Bazel_LLVM=D:/Program_Files/LLVM
set PATH=D:/Program_Files/LLVM/bin:%PATH%

bazel clean 
bazel clean --expunge  

git checkout -f r2.10

call configure.cmd

bazel build --config=opt --config=cuda --define=no_tensorflow_py_deps=true //tensorflow/tools/pip_package:build_pip_package --define=no_tensorflow_py_deps=true --copt=-nvcc_options=disable-warnings
