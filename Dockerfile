FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.1

RUN gem install droonga-engine --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["droonga-engine"]
CMD ["--help"]
