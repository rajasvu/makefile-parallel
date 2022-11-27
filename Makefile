SYSTEM_PYTHON = /usr/bin/python3
PYTHON = env/bin/python

create-venv:
	rm -rf $(TEST_DIR)/env 
	$(SYSTEM_PYTHON) -m venv $(TEST_DIR)/env 

install-deps:
	$(TEST_DIR)/$(PYTHON) -m ensurepip --default-pip
	$(TEST_DIR)/$(PYTHON) -m pip install -r $(TEST_DIR)/requirements.txt

test-test1:
	cd test1 && $(PYTHON) -m unittest small_tests.test1

test-test2:
	cd test2 && $(PYTHON) -m unittest tests.test2

test-parallel: test-test1 test-test2

test-docker-compose-parallel:
	docker-compose up --build

test-docker-compose-down:
	docker-compose down 

rm-docker-img:
	docker rmi -f $$(docker-compose images -q)

docker-clean: test-docker-compose-down rm-docker-img

.PHONY: create-venv install-deps test-test1 test-test2 test-parallel test-docker-compose-parallel test-docker-compose-down  rm-docker-img docker-clean
