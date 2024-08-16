FROM python:3.9

RUN apt -qq update && apt -qq install -y git wget ffmpeg
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN git clone https://triednow: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@github.com/webserver5/testout4gb/

WORKDIR /usr/src/app/testout4gb
RUN chmod 777 /usr/src/app/testout4gb
RUN pip3 install -r requirements.txt 
EXPOSE 80
CMD ["python3","-m","bot"]
