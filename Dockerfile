FROM ruby:2.3.1-alpine

RUN apk --update add --virtual build-dependencies \
  ruby-dev build-base nodejs git sqlite-dev && \
  gem update --system && \
  gem install bundler --no-ri --no-rdoc

ENV APP_HOME /demo.activeadmin.info
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY Gemfile          $APP_HOME
COPY Gemfile.lock     $APP_HOME

RUN bundle install --jobs 20 --retry 5

COPY bin              $APP_HOME/bin/
COPY config           $APP_HOME/config/
COPY lib              $APP_HOME/lib/
COPY public           $APP_HOME/public/
COPY spec             $APP_HOME/spec/
COPY vendor           $APP_HOME/vendor/

COPY .rspec           $APP_HOME/
COPY .ruby-version    $APP_HOME/
COPY config.ru        $APP_HOME/
COPY Rakefile         $APP_HOME/

COPY app              $APP_HOME/app/
COPY db               $APP_HOME/db/
COPY log              $APP_HOME/log/

RUN rake db:schema:load
RUN rake db:seed

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]