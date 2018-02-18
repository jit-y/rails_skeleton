FROM ruby:2.4.1

RUN gem install bundler -v 1.5.0

RUN useradd foo -u 3333 -d /home/ && \
    mkdir -p /home/foo/workspace && \
    chown foo.foo -R /home/foo

WORKDIR /home/foo/workspace

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

USER root

RUN ["bundle", "install", "--path", "vendor/bundle", "-j2"]

COPY . /home/foo/workspace

ENTRYPOINT [ "docker/rails/setup.sh" ]

CMD [ "exec", "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]
