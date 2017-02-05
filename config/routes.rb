Rails.application.routes.draw do
  root "karacagida#index"
  get "/about_us", to: "karacagida#about_us"
  get "/certificates", to: "karacagida#certificates"
  get "/contact", to: "karacagida#contact"
  get "/production", to: "karacagida#production"
  get "/products", to: "karacagida#products"
  get "/social_contribution", to: "karacagida#socialcont"
end
