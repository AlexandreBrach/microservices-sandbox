FROM python:3
RUN pip install Django
RUN mkdir /opt/src
WORKDIR /opt/src
ADD ./files /
ADD ./src/requirements.txt /opt/src/
RUN pip install -r requirements.txt
ADD ./src /opt/src
CMD /run.sh
