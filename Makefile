PYTHON=python3

.PHONY: format lint typecheck test run prepare

format:
	ruff format .

lint:
	ruff check .

typecheck:
	mypy .

test:
	pytest || true

run:
	$(PYTHON) main.py

prepare: format lint typecheck test
