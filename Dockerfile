FROM python:2.7

ARG GIT_SHA=7b515b340b83f6a360fa49294f1518a89af7ad1f

RUN apt-get update && \
    apt-get install -y git-core && \
    cd / && \
    git clone https://github.com/xaralis/transitfeed.git && \
    cd /transitfeed && \
    git checkout ${GIT_SHA}

EXPOSE 8765

WORKDIR "/transitfeed"

CMD ["python"]
