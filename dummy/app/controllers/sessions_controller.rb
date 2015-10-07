class SessionsController < ApplicationController

  #force_ssl :if => :has_ssl? , :except => :sign_out

  def sign_in
  end

  # def create
  #   clerk = Clerk.where(:email => params[:email]).limit(1).first
  #   if clerk && clerk.valid_password?(params[:password])
  #     session[:clerk_email] = clerk.email
  #     if clerk.admin
  #        redirect_to baskets_url , :notice => I18n.t(:signed_in)
  #      else
  #        redirect_after_sign_up
  #      end
  #   else
  #     redirect_to :sign_in , :notice => I18n.t(:sign_in_invalid)
  #   end
  # end

  # def sign_out
  #   session[:clerk_email] = nil
  #   redirect_to Rails.application.routes.url_helpers.root_path , :notice => I18n.t(:signed_out)
  # end
  #
  # def sign_up
  #   if request.get?
  #     @clerk = Clerk.new
  #   else
  #     @clerk = Clerk.new(params_for_clerk)
  #     if @clerk.save
  #       session[:clerk_email] = @clerk.email
  #       return redirect_after_sign_up
  #     end
  #   end
  # end

  private

  # def redirect_after_sign_up
  #   redirect_to main_app.root_url
  # end
  # def redirect_after_sign_in
  #   redirect_to main_app.root_url
  # end
  def params_for_clerk
    params.require(:clerk).permit(:email,:password,:password_confirmation)
  end

end
