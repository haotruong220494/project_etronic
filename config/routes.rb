Rails.application.routes.draw do
  namespace :admin do
    devise_for :admins, :path => "", :path_names => { :sign_in => "login", :sign_out => "logout" },
      :skip => [:registrations, :passwords]
    root "dashboards#index"
    resources :collections do
      member do
        delete :delete_image_attachment
      end
    end
  end

  root "homes#index"
  # get "/detail", to: "clients#detail"
  # get "/category", to: "clients#category"
  resources :collections
end
