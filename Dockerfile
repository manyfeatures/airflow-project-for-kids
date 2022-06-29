FROM python:3.8-buster 

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY Procfile .
ENV AIRFLOW__CORE__SQL_ALCHEMY_CONN=postgresql://postgres:shitshit@postgres:5432
ENV AIRFLOW__CORE__LOAD_EXAMPLES=False
ENV AIRFLOW_HOME=/app
ENV AIRFLOW__CORE__FERNET_KEY=_cDpVqU3I2BWu0tlt8bfjPm-nwdiqx8ZqtMmU5XRpAk=

ENV AIRFLOW__WEBSERVER__AUTHENTICATE=True
ENV AIRFLOW__WEBSERVER__AUTH_BACKEND=airflow.contrib.auth.backends.password_auth 

# CMD ["echo", "web: airflow initdb"]
# CMD ["cat", "Procfile"]
EXPOSE 5000
#COPY main.py .
#ENV FLASK_APP=main.py
CMD ["airflow", "webserver", "--port=0.0.0.0"]
