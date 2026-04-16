run:
	uv run uvicorn main:app --host 0.0.0.0 --port 8080

.PHONY: test lint format

test:
	pytest

lint:
	ruff check .

format:
	ruff format .