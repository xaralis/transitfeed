FROM python:2.7

ARG GIT_SHA=c7fe495

RUN apt-get update && \
    apt-get install -y git-core && \
    cd / && \
    git clone https://github.com/xaralis/transitfeed.git && \
    cd /transitfeed && \
    git checkout ${GIT_SHA}

EXPOSE 8765

WORKDIR "/transitfeed"

CMD ["python"]
