Rails.application.routes.draw do

  mount StripeClerk::Engine => "/stripe_clerk"
end
