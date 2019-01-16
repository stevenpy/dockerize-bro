FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /dockerize-bro
WORKDIR /dockerize-bro
COPY Gemfile /dockerize-bro/Gemfile
COPY Gemfile.lock /dockerize-bro/Gemfile.lock
RUN bundle install
COPY . /dockerize-bro
