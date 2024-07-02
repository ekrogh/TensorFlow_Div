bazel clean 
bazel clean --expunge  

bazel query "//tensorflow/tools/pip_package:*"
