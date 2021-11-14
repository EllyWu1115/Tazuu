Rails.application.routes.draw do
  get "/sign_up", to: "users#sign_up"
  get "/account_verify", to: "users#account_verify"
end
