Summary
=======
This extension allows you to add Stripe payment module to your shop. You can link it with your Stripe account to charge money for clients'
 orders.

Instalation
============

To install Stripe, you need to update sales_clerk version:

1. Enter your app's root and run:

  git pull and bundle???




This will implement the following changes:

* add stripe_clerk engine by adding the following lines to sales_clerk's Gemfile:

  ` gem 'stripe_clerk' `

  ` gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby' `

* add the following line to routes (sales_clerk/config/routes.rb):

  ` mount StripeClerk::Engine => "/" `

* add the following line to sales_clerk/app/assets/javascripts/sales_clerk.js:

  ` //= require stripe_clerk/charges `

* add styling to sales_clerk's app/assets/stylesheets/sales_clerk.css.scss (link).

* add partial view _payment_stripe.haml (link).

* remove payment_type row from order.haml view and add the following line instead (sales_clerk/app/views/shop/order.haml):

  ` = render :partial => 'payment_stripe', :locals => { :order => @order } `



Configuration
=============
In order to use to make charges, you need to have a Stripe account. You can register [here](https://stripe.com).

1. Configure your Stripe account credits.

Link your credentials from Stripe account (Your Account -> Account setting -> API keys) with environment variables in config/initializers/stripe.rb:

  * publishable_key
  * secret_key

Remember not to put them directly into app!

2. You can also custom your Stripe's frame appearance, for example adding your shop logo, label or change currency. More details in [Stripe checkout documentation](https://stripe.com/docs/checkout).

[!](/app/assets/images/stripe.png)


Credits
====
__RubyClerks:__ Thanks to project author and our amazing mentor [Torsten Rüger](https://github.com/dancinglightning)

__TeamGirlsCodersWarsaw:__ Thanks to our fantastic coaches: [Jarek](https://github.com/pjar), [Łukasz](https://github.com/lsolniczek), [Tomasz](https://github.com/tomash) and [Piotr](https://github.com/chastell) and our lovely supervisor [Magda](https://github.com/madziaf)!

__Authors:__ [Anna Góra](https://github.com/Czarrrna) & [Barbara Kłosowska](https://github.com/aberracja)

