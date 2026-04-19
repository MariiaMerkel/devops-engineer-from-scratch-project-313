FROM python:3.10.12

WORKDIR /devops-engineer-from-scratch-project-313

RUN pip install --no-cache-dir uv

COPY pyproject.toml ./
COPY README.md ./

RUN uv sync --no-dev

COPY . .

EXPOSE 8080

CMD ["uv", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]