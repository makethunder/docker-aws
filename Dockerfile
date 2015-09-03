FROM python:slim

RUN pip install 'awscli==1.8.1'
ENTRYPOINT ["aws"]
