FROM python:3.9.16-alpine
WORKDIR /apps
COPY . .

RUN pip install mkdocs
RUN mkdocs build
WORKDIR /apps/site
EXPOSE 8080


CMD python -m http.server 8080

