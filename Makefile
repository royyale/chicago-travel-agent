.PHONY: install test lint run docker-up

install:
	pip install -r requirements.txt

test:
	pytest tests/ -v

lint:
	ruff check .
	black --check .

run:
	uvicorn app.main:app --reload

docker-up:
	docker-compose up --build
```

**Click on `.gitignore`** and paste:
```
# Secrets
.env
*.env

# Python
__pycache__/
*.pyc
*.pyo
venv/
.pytest_cache/

# Databases
*.sqlite
*.db