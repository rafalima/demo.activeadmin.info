FROM ruby:2.3.1

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

ENV APP_HOME /demo.activeadmin.info
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile          $APP_HOME
COPY Gemfile.lock     $APP_HOME

RUN bundle install --jobs 20 --retry 5

COPY .          $APP_HOME/
RUN rake db:schema:load
RUN rake db:seed

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]