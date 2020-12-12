FROM ruby:2.5.7
RUN gem install bundler
RUN gem install rake
WORKDIR /app
COPY . /app
RUN bundle install
EXPOSE 3000
# CMD ["rails", "server", "-b", "0.0.0.0"]