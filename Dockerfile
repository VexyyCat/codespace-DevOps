FROM python:3.12.18-stretch

#Working Directory
WORKDIR /app

COPY . app.py /app/

#Install packages from requirements.txt
#hadoling ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org-r requirements.txt