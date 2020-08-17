# README

This is the simple quiz application built with Ruby on Rails. To play with it check the link: https://anton-quiz.herokuapp.com/

It's a single-user app, so it implies everytime the quiz is done by the same user, which means at each moment of time the quiz got only one status and only one result that everytime are accessible to anyone who opened the app.

* The Ruby version: 2.7.1
* The Rails version: 6.0.3.2
* Development and test DBMS: sqlite3
* Production DBMS: PostgreSQL
* Testing framework: RSpec

The steps to run the app locally
1. go to the app folder
1. run
   * `bundle install`
   * `rails db:migrate`
   * `rails db:seed`
   * `rails server`
