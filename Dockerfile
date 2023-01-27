FROM python:3.8-buster 

WORKDIR /app
COPY startup.sh .
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# postgress db address for metadata and something else?
ENV AIRFLOW__CORE__SQL_ALCHEMY_CONN=postgresql://postgres:shitshit@172.17.0.2:5432
# ?
ENV AIRFLOW__CORE__LOAD_EXAMPLES=False
# home dir
ENV AIRFLOW_HOME=/app
# what is this?
ENV AIRFLOW__CORE__FERNET_KEY=_cDpVqU3I2BWu0tlt8bfjPm-nwdiqx8ZqtMmU5XRpAk=
# what is this?
ENV AIRFLOW__WEBSERVER__AUTHENTICATE=True
ENV AIRFLOW__WEBSERVER__AUTH_BACKEND=airflow.contrib.auth.backends.password_auth 

# Maybe it is redundant
EXPOSE 5000

CMD ["/bin/bash", "startup.sh"]