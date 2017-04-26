Rails.application.routes.draw do
  root "karacagida#index"
  get "/about_us", to: "karacagida#about_us"
  get "/certificates", to: "karacagida#certificates"
  get "/production", to: "karacagida#production"
  get "/products", to: "karacagida#products"
  get "/products/:product_name", to: "products#show"
  get "/social_contribution", to: "karacagida#socialcont"
  get "/contacts", to: "contacts#new"
  post "/contacts", to: "contacts#create"
  get "/admin", to: "admin#index"
  post "/admin", to: "admin#upload"
  delete "/admin/:certificate", to: "admin#destroy"
end
