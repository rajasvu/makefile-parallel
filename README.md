# test-parallel

1. `test1` is a very small test for pandas.
2. `test2` is a very small test for flask.

Makefile usage

```sh
make create-venv # create venv for python

make install-deps # install dependencies

make test-test1 # run only single test

make test-test2

make test-parallel # run both tests in paralele

make test-parallel-docker # build the docker images and tests in parallel, inside docker containers
```
