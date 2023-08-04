FROM python:3.10.6

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY . /app/
RUN pip install --no-cache-dir -r django-template/requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
