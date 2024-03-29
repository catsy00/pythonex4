FROM registry.access.redhat.com/ubi8/python-38:1-68


# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app


EXPOSE 8080
ENTRYPOINT [ "python" ]
 

CMD [ "app.py" ]
