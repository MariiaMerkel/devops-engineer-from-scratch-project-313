run:
	uv run uvicorn main:app --host 0.0.0.0 --port 8080

.PHONY: test lint format

test:
	uv run pytest

lint:
	uv run ruff check .

format:
	uv run ruff format .