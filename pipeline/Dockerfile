#specify docker image to build docker image from
FROM python:3.13.11-slim
#Copy uv from the astral uv image into /bin/ in this image
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/

#Creates and sets working directory inside container
WORKDIR /code
# Use the Python inside the project's virtual environment
ENV PATH="/code/.venv/bin:$PATH"

#Copy project dependency files into working directory
COPY pyproject.toml .python-version uv.lock ./
# Install the exact dependency versions recorded in uv.lock
RUN uv sync --locked



#Copy pipeline script into working directory
COPY pipeline.py .

#Commands to run once docker container starts
ENTRYPOINT ["python", "pipeline.py"]