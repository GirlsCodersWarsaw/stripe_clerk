Summary
=======
This extension allows you to add Stripe checkout.js payment module to your shop. You can link it with your Stripe account to charge money for clients'
 orders.

Instalation
============
To install it, you need to add the following lines to your Gemfile:

` gem 'stripe_clerk' `
` gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby' `

run bundler

` bundle `

Configuration
=============
Configure your Stripe account credits.

1. Link your credentials from Stripe account (Your Account -> Account setting -> API keys) with environment variables in config/initializers/stripe.rb:

  * publishable_key
  * secret_key

Remember not to put them directly into app!



TODO
====
Need more testing.

