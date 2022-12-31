FROM python:3-slim

WORKDIR /root

COPY . .
RUN pip3 install . -r requirements.txt

CMD /bin/bash