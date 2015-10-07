class ShopController < ApplicationController


  def order
    notice = I18n.t(:no_order_found)
    if( session[:order])
      @order = Order.find( session[:order] )
      notice += I18n.t(:log_in_see_history)
      @clerk = Clerk.new :email => @order.email
    elsif clerk = current_clerk
      @order = Order.where(:email => clerk.email).first
    end
  end

end
