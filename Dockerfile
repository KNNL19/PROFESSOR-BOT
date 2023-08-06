FROM python:3.11

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -U pip && pip install -U -r requirements.txt
RUN pip install httpcore==0.15.0
WORKDIR /app

COPY . .

CMD ["python", "bot.py"]
