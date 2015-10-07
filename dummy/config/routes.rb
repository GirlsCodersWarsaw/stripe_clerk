Rails.application.routes.draw do
  get 'order' => 'shop#order', :as => :shop_order

  get 'sign_in'  => 'sessions#sign_in'

  mount StripeClerk::Engine => "/"
end
