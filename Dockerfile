FROM python:3

RUN pwd
ADD check.py /check.py
ADD requirements.txt /requirements.txt

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN pip install -r requirements.txt
RUN pwd
RUN chmod +x check_links.py
ENTRYPOINT ["/check.py"]
