FROM ruby:3.2.2

ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo}
ENV EDITOR=vim

WORKDIR /app

RUN apt-get update && apt-get install -y vim

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN bundle install