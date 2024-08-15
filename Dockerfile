FROM python:3.9

RUN apt -qq update && apt -qq install -y git wget ffmpeg
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN git clone https://github.com/triednow/check

WORKDIR /usr/src/app/check
RUN chmod 777 /usr/src/app/check
RUN pip3 install -r requirements.txt 
EXPOSE 80
CMD ["python3","-m","bot"]
