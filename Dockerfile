FROM python:latest
# Setup useful environment variables

WORKDIR /home/pancake

COPY . .
COPY configure.sh /configure
#RUN pip install -r requirements.txt

CMD ["/configure"]