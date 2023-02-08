.PHONY: install format lint test sec 

install:
	@python venv/bin/activate_this.py
	@pip install -r dev-requirements.txt
format:
	@isort .
	@black .
lint:
	@isort . --check
	@prospector . --with-tool pep257 --doc-warning
doc:
	
test:
	@pytest -v test/
security:
	@pip-audit