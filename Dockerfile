FROM python:3.11.0

# sets the working dir to the project folder within the container
# current working dir is denoted by .
WORKDIR /docker-fast-api-template

# COPY ./requirements.txt /docker-fast-api-template/requirements.txt OR
COPY requirements.txt .

# RUN pip install --no-cache-dir -r /docker-fast-api-template/requirements.txt OR
RUN pip install --no-cache-dir -r requirements.txt

# COPY ./app /docker-fast-api-template/app OR
COPY app ./app

# CMD ["python", "./app/main.py"] OR
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
