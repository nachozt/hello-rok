FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /hello-rok
WORKDIR /hello-rok

COPY Gemfile /hello-rok/Gemfile
COPY Gemfile.lock /hello-rok/Gemfile.lock
RUN bundle install

ADD . /hello-rok

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT ["docker-entrypoint.sh"]
