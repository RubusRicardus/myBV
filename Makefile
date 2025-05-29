#################################################################################
# GLOBALS                                                                       #
#################################################################################

PROJECT_NAME = myBV
PYTHON_VERSION = 3.12
PYTHON_INTERPRETER = python

#################################################################################
# COMMANDS                                                                      #
#################################################################################


## Install Python dependencies with Poetry 
.PHONY: requirements
requirements:
	poetry install 


## Delete all compiled Python files
.PHONY: clean
clean:
	@find . -type f -name "*.py[co]" -delete
	@find . -type d -name "__pycache__" -exec rm -r {} +
	@find . -type d -name ".mypy_cache" -exec rm -r {} +

## Linting using mypy and pylint
.PHONY: lint
lint:
	mypy --strict src/ || exit 0
	pylint src/ || exit 0


## Run tests
.PHONY: test
test:
	python -m pytest tests
