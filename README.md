# test-parallel

1. `test1` is a very small test for pandas.
2. `test2` is a very small test for flask.

Makefile usage

```sh

make create-venv TEST_DIR=test1

make install-deps TEST_DIR=test1

make test-test1 # run only single test

make test-test2

make test-parallel # run both tests in parallel

make test-docker-compose-parallel # run the tests in separate container using docker compose


```
