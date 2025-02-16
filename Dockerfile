FROM python:3.11
RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip install -r requirements.txt
RUN pip install httpcore==0.17.3
WORKDIR /app

COPY . .

CMD ["python3", "bot.py"]
