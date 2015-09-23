require_dependency "stripe_clerk/application_controller"

module StripeClerk
  class ChargesController < ApplicationController

  def new
  end

  def show
    @order = Order.find( session[:order] )
  end

  def create
    order = Order.find( session[:order] )
    amount = order.total_price

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (amount*100).to_i,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )

    order.pay_now
    order.payment_info = charge.id
    order.payment_type = "stripe"
    order.save

    redirect_to main_app.shop_order_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
  end
end