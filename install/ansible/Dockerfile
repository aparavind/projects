FROM python:3.10

COPY requirements.txt .

RUN apt -y update && \
    apt -y install sshpass && \
    python -m pip install --upgrade pip && \
    python -m pip install -r requirements.txt && \
    apt -y autoremove && \
    rm -rf /var/lib/apt/lists/*
