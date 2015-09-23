Rails.application.routes.draw do
  mount StripeClerk::Engine => "/"
end
