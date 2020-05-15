FROM ruby:2.6-alpine

ENV BUNDLER_VERSION=2.0.2

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      libpq \
      make \
      nano \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python \
      tzdata \
      yarn

RUN gem install bundler -v 2.0.2
RUN mkdir /rails
WORKDIR /rails
COPY rails/Gemfile /rails/Gemfile
COPY rails/Gemfile.lock /rails/Gemfile.lock
RUN bundle check || bundle install
COPY rails /rails
EXPOSE 3000
CMD [ "bundle", "exec", "puma", "-C", "config/puma.rb" ]