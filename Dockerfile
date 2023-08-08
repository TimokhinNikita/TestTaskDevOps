FROM python:3.9

ENV DJANGO_SETTINGS_MODULE=myproject.settings

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN python manage.py collectstatic --noinput
