Rails.application.routes.draw do
  root "clients#home"

  get "/detail", to: "clients#detail"
  get "/category", to: "clients#category"
end
