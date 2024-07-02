bazel clean 
bazel clean --expunge  

call configure.cmd

bazel build --config=win_clang --extra_toolchains=@local_config_cc//:cc-toolchain-x64_windows-clang-cl --copt=-ID:\Program_Files\Microsoft_Visual_Studio\2022\BuildTools\VC\Tools\MSVC\14.40.33807\include --repo_env=TF_PYTHON_VERSION=3.11 //tensorflow/tools/pip_package:build_pip_package --repo_env=WHEEL_NAME=tensorflow_cpu --define=no_tensorflow_py_deps=true --copt=-nvcc_options=disable-warnings
