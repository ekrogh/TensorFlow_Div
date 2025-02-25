export PATH="/d/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC/Tools/MSVC/14.40.33807/bin/Hostx64/x64:/d/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC/Tools/MSVC/14.40.33807/include:$PATH"
# export PATH="/d/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133/bin/Hostx64/x64:$PATH"
export PATH="/c/Python312/Scripts:$PATH"
# Use Unix-style with ':' as separator
export PATH="/d/Program_Files/NVIDlA_GPU_Computing_Toolkit/CUDA/v11.8/bin:$PATH"
export PATH="/d/Program_Files/NVIDlA_GPU_Computing_Toolkit/CUDA/v11.8/extras/CUPTI/lib64:$PATH"
# export PATH="/c/tools/cuda/bin:$PATH"
export PATH="/d/Users/eigil/projects/myCommands/InPath:$PATH"
export PATH="/c/Python312:$PATH"
export MSYS_NO_PATHCONV=1
export MSYS2_ARG_CONV_EXCL="*"

export PYTHON_BIN_PATH="/d/Users/eigil/miniconda3_py3124/envs/cppTF/python.exe"
export PYTHON_LIB_PATH=/d/Users/eigil/miniconda3_py3124/envs/cppTF/Lib/site-packages
export PYTHON_DIRECTORY=/d/Users/eigil/miniconda3_py3124/envs/cppTF/Scripts

export BAZEL_WINSDK_FULL_VERSION=10.0.19041.0
export INCLUDE=/d/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC/Tools/MSVC/14.40.33807/include:%INCLUDE%
# export INCLUDE=/d/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133/include:%INCLUDE%
# export BAZEL_WINSDK_FULL_VERSION=10.0.26100.0
# export BAZEL_SH=/d/Program_Files/msys64/usr/bin/bash.exe 
export BAZEL_VS=/d/Program_Files/Microsoft_Visual_Studio/2022/BuildTools
export BAZEL_VC=/d/Program_Files/Microsoft_Visual_Studio/2022/BuildTools/VC
# export BAZEL_VS=/d/Program_Files/Microsoft_Visual_Studio/2019/BuildTools
# export BAZEL_VC=/d/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC/Tools/MSVC/14.29.30133
# export BAZEL_VC=/d/Program_Files/Microsoft_Visual_Studio/2019/BuildTools/VC 
export Bazel_LLVM=/d/Program_Files/LLVM
# export PATH=/d/Program_Files/LLVM/bin:$PATH


# bazel build //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu
# bazel build //tensorflow/tools/pip_package:wheel --repo_env=WHEEL_NAME=tensorflow_cpu

bazel build --config=opt --repo_env=TF_PYTHON_VERSION=3.12 //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu --define=no_tensorflow_py_deps=true

# bazel build --config=win_clang --config=v2 --repo_env=TF_PYTHON_VERSION=3.11 //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu

# bazel build //tensorflow/tools/pip_package:build_pip_package --subcommands

# bazel aquery 'mnemonic("CppCompile", //tensorflow/tools/pip_package:build_pip_package)' --output=text

# bazel build --copt=["-Iinclude"] --config=win_clang --extra_toolchains=@local_config_cc//:cc-toolchain-x64_windows-clang-cl --repo_env=TF_PYTHON_VERSION=3.11 //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu --define=no_tensorflow_py_deps=true --copt=-nvcc_options=disable-warnings
