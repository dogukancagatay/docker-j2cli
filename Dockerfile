FROM python:2-alpine

RUN pip install --upgrade pip \
    && pip install j2cli

WORKDIR /
ENTRYPOINT ["j2"]
CMD ["--help"]
