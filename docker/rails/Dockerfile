FROM ruby:2.4.1

RUN useradd -m foo -u 3333 && \
    mkdir -p /home/foo/workspace && \
    chown foo.foo -R /home/foo/workspace

USER root

RUN gem install bundler -v 1.5.0

WORKDIR /home/foo/workspace

COPY . /home/foo/workspace

ENTRYPOINT [ "docker/rails/setup.sh" ]

CMD [ "exec", "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]
