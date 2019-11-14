FROM python:3.6

ENV SCANCODE_VERSION=3.0.2

RUN apt-get install bzip2 xz-utils zlib1g libxml2-dev libxslt1-dev

ADD "https://github.com/nexB/scancode-toolkit/releases/download/v${SCANCODE_VERSION}/scancode-toolkit-${SCANCODE_VERSION}.tar.bz2" .

RUN mkdir scancode-toolkit && tar -xjvf scancode-toolkit-${SCANCODE_VERSION}.tar.bz2 -C scancode-toolkit --strip-components=1

WORKDIR scancode-toolkit

RUN ./scancode --help

# script to handle scancode and extractcode
ADD entrypoint.sh .

ENV PATH=${HOME}/scancode-toolkit:${PATH}

ENTRYPOINT ["entrypoint.sh"]
