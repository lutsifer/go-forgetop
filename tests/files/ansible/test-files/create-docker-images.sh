#!/bin/bash -x

# creates the necessary docker images to run testrunner.sh locally

docker build --tag="forgetop/cppjit-testrunner" docker-cppjit
docker build --tag="forgetop/python-testrunner" docker-python
docker build --tag="forgetop/go-testrunner" docker-go
