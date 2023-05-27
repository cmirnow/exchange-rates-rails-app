# Open Exchange Rates API on Ruby on Rails 7

<img src="https://github.com/cmirnow/exchange-rates-rails-app/blob/master/public/exchange-rates.jpeg" alt="Open Exchange Rates API on Ruby on Rails 7" width="100%"/>

This Ruby on Rails application demonstrates taking exchange rates from the Open Exchange Rates API and displaying them via Highcharts.

This rails-app uses Webpack ( jsbundling-rails[webpack] ) to bundle Highcharts, then deliver it via the asset pipeline in Rails. Or you can use [sprockets](https://github.com/cmirnow/exchange-rates-rails-app/tree/83dfac6a8034a37bb7d19f1d150ad315aa178043) for a different way.

## How to Get Started

```bash
git clone https://github.com/cmirnow/exchange-rates-rails-app.git
cd exchange-rates-rails-app
bundle install
bundle exec figaro install
```

Edit:

```bash
#config/application.yml
KEY_OPENEXCHARGERATES: '************************'
```


```bash
rake assets:precompile
rails s
```
