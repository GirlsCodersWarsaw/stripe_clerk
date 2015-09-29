SUMMARY
=======
This extension allows you to add Stripe checkout.js payment module to your shop. You can link it with your Stripe account to charge money for clients
 orders.

INSTALLATION
============
To install it, you need to add the following line to your Gemfile:

` gem 'stripe_clerk' `

run bundler

` bundle `

Configuration
=============
Configure your Stripe account credits.

1. Link your credentials from Stripe account (Your Account -> Account setting -> API keys) with environment variables in config/initializers/stripe.rb:
* publishable_key
* secret_key

Remember not to put them directly!



TODO
====
Test more.

