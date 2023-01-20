FROM python:latest

COPY stocks_products /stocks_products/

WORKDIR /stocks_products/

RUN pip install -r requirements.txt

RUN python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8000




