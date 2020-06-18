# The Active Admin Store
[![Travis CI](https://img.shields.io/travis/activeadmin/activeadmin/master.svg)](https://travis-ci.org/activeadmin/activeadmin)

<hr />

<h1>Requirements</h1>
<ol>
  <li>Install <a target="_BLANK" href="https://github.com/sstephenson/rbenv">Rbenv</a></li>
  <li>Install Ruby 2.2.0
    <ul>
      <li><a target="_BLANK" href="http://rubyinstaller.org/">Windows installer</a></li>
      <li><a target="_BLANK" href="https://github.com/sstephenson/rbenv#installing-ruby-versions">unix</a></li>
    </ul>
  </li>
  <li>Install <a target="_BLANK" href="http://bundler.io/">bundler</a></li>
</ol>

<h1>Running the application</h1>
<ol>
  <li>Clone this repo</li>
  <li>Execute "bundle install" on the root of the project to install all dependencies defined in the Gemfile</li>
  <li>Execute "rake db:schema:load" to create the database tables</li>
  <li>Execute "rake db:seed" to populate the database (products and users)</li>
  <li>Execute "rails s" to start the application</li>
  <li>Access "http://localhost:3000"</li>
</ol>
OLD



## Local development setup

Dependencies: Ruby 2.6+ and PostgreSQL

* Clone project using Git
* Run `bundle install`
* Configure database:
  - Create the DB user by running command:
    ```
    sudo -u postgres psql -c "CREATE USER demo_aa WITH CREATEDB NOCREATEROLE PASSWORD 'demo_aa'"
    ```
  - Export the environment to set the credentials with
    ```
    export DATABASE_USERNAME=demo_aa DATABASE_PASSWORD=demo_aa
    ```
  - You can use [direnv](https://github.com/direnv/direnv) so that you don't need to export these environment variables every time, or change username/password in `config/database.yml`
* Run command `bin/rails db:setup` to create database with seed data.
* Start server: `bin/rails s`
* Navigate in browser to: http://localhost:3000/admin
