FROM python:3.6
LABEL maintainer="hello@wagtail.io"
ARG ADMIN_PASSWORD 
ARG ADMIN_USER 
ARG ADMIN_EMAIL
ENV ADMIN_USER "$ADMIN_USER"
ENV ADMIN_PASSWORD "$ADMIN_PASSWORD"
ENV ADMIN_EMAIL "$ADMIN_EMAIL"
COPY ./requirements.txt requirements.txt
RUN pip install -r requirements.txt
WORKDIR /code/
RUN useradd wagtail && chown -R wagtail /code
USER wagtail
EXPOSE 8000
