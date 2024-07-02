bazel clean 
bazel clean --expunge  

git checkout r2.10

call configure.cmd

bazel build --config=opt --config=cuda --define=no_tensorflow_py_deps=true //tensorflow/tools/pip_package:build_pip_package --define=no_tensorflow_py_deps=true --copt=-nvcc_options=disable-warnings
