FROM python:3.10.0

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

EXPOSE 80 

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

