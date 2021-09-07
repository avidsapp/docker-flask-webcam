FROM --platform=linux/arm64 ubuntu:20.04

COPY --from=jjanzic/docker-python3-opencv /opt/build .

ENV TERM=xterm
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=America/Denver

RUN apt-get update -y && apt-get install -y \
  build-essential \
  cmake \
  libsm6 \
  libxext6 \
  libxrender-dev \
  libopencv-dev \
  python3 \
  python3-pip \
  python3-dev \
  python3-opencv

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN pip3 install imutils

EXPOSE 5000

COPY . /app
ENTRYPOINT ["python3"]
CMD ["app.py --ip 0.0.0.0 --port 5000"]
