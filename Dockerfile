FROM python:3.10
WORKDIR /flaskapp
RUN pip install pip==21.3.1
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENTRYPOINT [ "python" ]
CMD [ "app.py" ]
