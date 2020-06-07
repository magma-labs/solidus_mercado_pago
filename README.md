Solidus Mercado Pago Payment Method.
=================================
[![Build Status](https://circleci.com/gh/magma-labs/solidus_mercado_pago)](https://circleci.com/gh/magma-labs/solidus_mercado_pago)


This project is a fork from [spree version maintained by ngelx](https://github.com/ngelx/solidus_mercado_pago).


```
gem 'solidus_mercado_pago', git: "git@github.com:magma-labs/solidus_mercado_pago.git"
```

You should run inside your project

```
bundle exec rails g solidus_mercado_pago:install
```

This will import assets and migrations

Basic Setup
-----

## Retrieve Mercado pago account details
You'll need the following account details:

- Client ID
- Client secret
- Sandbox (A boolean value to indicate if we're using the sandbox or not)

These values can be obtained by logging in to your Mercado Pago account, going to `Credentials -> Basic checkout`

## Create a new payment method

Payment methods can accept preferences either directly entered in admin.

1. Visit `/admin/payment_methods/new`
2. Set `Mercado pago` as provider.
3. Save to update the form
4. Set your credentials into the corresponding fields

By default, your preferences can be gained from your environment vars (`MERCADOPAGO_CLIENT_ID`, `MERCADOPAGO_CLIENT_SECRET`), except by `sandbox`; its default value is `true`.


Other option is create the payment method from admin interface:


Usage
-----

- Add a new payment method in the admin panel of type Spree::PaymentMethod::MercadoPago
- After adding the payment method you will be able to configure your Client ID and Client Secret (provided by Mercado Pago).

IPN
---

For IPN you need to configure the notification URL in Mercado Pago's site. The notification URL will be `http[s]://[your_domain]/mercado_pago/ipn`. Please review Mercado Pago's documentation at http://developers.mercadopago.com/ for the correct place where to configure IPN notification URLs.


Testing
-------

- Clone this repo
- `ln -s docker-compose-{platform}.yml docker-compose.yml`
- `docker-sync start` **Only in mac**
- `docker-compose up`
- `docker-compose run web bundle exec rake test_app` to build a dummy app directory inside specs
- `docker-compose run web bundle exec rspec spec`
