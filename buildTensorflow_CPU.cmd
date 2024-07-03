set PATH=D:/Program_Files/Python/311;%PATH%
set PATH=D:/Program_Files/Python/311/Scripts;%PATH%
@REM set PYTHON_BIN_PATH=path/to/python_virtualenv/Scripts/python.exe 
@REM set PYTHON_LIB_PATH=path/to/python virtualenv/lib/site-packages 
@REM set PYTHON_DIRECTORY=path/to/python_virtualenv/Scripts 

set BAZEL_WINSDK_FULL_VERSION=10.0.19041
@REM set BAZEL_WINSDK_FULL_VERSION=10.0.26100.0
set BAZEL_SH=D:/Program_Files/msys64/usr/bin/bash.exe 
set BAZEL_VS=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools
set BAZEL_VC=D:/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC 
@REM set Bazel_LLVM=D:/Program_Files/LLVM
@REM set PATH=D:/Program_Files/LLVM/bin;%PATH%

bazel build //tensorflow/tools/pip_package:build_pip_package

@REM bazel build --copt=-I./include/ --config=opt --repo_env=TF_PYTHON_VERSION=3.11 //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu

@REM bazel build --copt=["-Iinclude"] --config=win_clang --extra_toolchains=@local_config_cc//:cc-toolchain-x64_windows-clang-cl --repo_env=TF_PYTHON_VERSION=3.11 //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu --define=no_tensorflow_py_deps=true --copt=-nvcc_options=disable-warnings
