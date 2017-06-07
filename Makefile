.PHONY: dependencies
dependencies:
	virtualenv -p python3 venv

.PHONY: setup
setup: dependencies
	./venv/bin/pip install -r requirements.txt
