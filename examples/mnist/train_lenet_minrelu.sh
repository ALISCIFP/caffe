#!/usr/bin/env sh
set -e

./build/tools/caffe train \
    --solver=examples/mnist/lenet_minrelu_solver.prototxt \
    2>&1 | tee Log/mnist_lenet_minrelu.log \
    $@
