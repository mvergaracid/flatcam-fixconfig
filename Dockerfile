FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive \
    DISPLAY=host.docker.internal:0 \
    XDG_RUNTIME_DIR=/tmp

RUN apt-get update && apt-get install -y \
    python3 python3-pyqt5 python3-shapely python3-pip python3-tk \
    mesa-utils \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libglu1-mesa

RUN pip3 install --upgrade numpy

RUN pip3 install flatcam

CMD ["flatcam"]
