FROM python:3.10-slim
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y default-libmysqlclient-dev
ENV PYTHONBUFFERED 1
WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

CMD ["python" , "application.py"]