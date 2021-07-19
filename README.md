# Rails 6 Starter Template

This is a template repo configured with the following technology out of the box:

* Rails 6.1
* Ruby 3.0.2
* Postgres with UUIds as primary keys
* Webpacker 5.4
* Tailwind 2.2
* Hotwire (Stimulus + Turbo)
* [TailwindCSS Stimulus Components](https://github.com/excid3/tailwindcss-stimulus-components)
* [View Components](https://viewcomponent.org/)
* Devise
* Google Oauth
* Sidekiq

## Getting started

The simplest way to get started is to copy this repo as a template, using the Use Template button at the top of the Github repo page.

Once you've copied the template to your own Github account, clone your repo down to your local machine, `cd` in, and run:

```
rails db:create db:migrate
rails s
```

Start the webpack server with `bin/webpack-dev-server`

## System requirements

You'll need Ruby 3.0.2 installed along with postgres and redis (if you're using Sidekiq)

## Tailwind Configuration

A simple color scheme and standard font sizes are provided out of the box. Edit `tailwind.config.js` to make changes

## Google Oauth

If you want to use Google as an omniauth provider, you will need to set the `oauth_client_id` and `oauth_client_secret` in your config/credentials.yml.enc file. See config/credentials_sample.yml for details on the appropriate format. Create a credentials file with `rails credentials:edit`.

## Deploying to Heroku

The application is ready to deploy to Heroku with no additional configuration changes. If you have Heroku cli set up simply run `heroku create && heroku push origin main`. A simple Procfile is provided to ensure run database migrations.


