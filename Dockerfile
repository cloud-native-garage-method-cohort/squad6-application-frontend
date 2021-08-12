FROM registry.access.redhat.com/ubi8/python-38:1-68

WORKDIR /usr/src/app

COPY app.py requirements.txt .

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit", "run"]

CMD ["app.py"]
