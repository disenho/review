FROM alpine:latest

RUN apk add --update python3 py3-pip

# Set up a virtual environment
RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

# Create app directory
WORKDIR /app

COPY . /app

RUN pip3 install -r requirements.txt

EXPOSE 8080
CMD [ "python3", "server2.py" ]
