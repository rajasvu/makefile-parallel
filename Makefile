SYSTEM_PYTHON = /usr/bin/python3
PYTHON = ./env/bin/python

create-venv:
	rm -rf env
	$(SYSTEM_PYTHON) -m venv env

install-deps:
	$(PYTHON) -m ensurepip --default-pip
	$(PYTHON) -m pip install -r requirements.txt

test-test1:
	$(PYTHON) -m unittest test1.small_tests.test1

test-test2:
	$(PYTHON) -m unittest test2.test2

test-parallel: test-test1 test-test2

build-docker-img:
	docker build -t py-test-img .

test-test1-docker:
	docker run -it py-test-img python3 -m unittest test1.small_tests.test1

test-test2-docker:
	docker run -it py-test-img python3 -m unittest test2.test2

run-ls:
	docker run py-test-img 'tail -f /dev/null' 


test-parallel-docker: build-docker-img test-test1-docker test-test2-docker

.PHONY: create-venv install-deps test-test1 test-test2 test-parallel build-docker test-test1-docker test-test2-docker test-docker-parallel
