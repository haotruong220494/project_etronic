Rails.application.routes.draw do
  if Rails.env.development?
    require "resque/server"
    mount Resque::Server.new, at: "/resque"
  end

  mount Ckeditor::Engine => "/ckeditor"
  namespace :admin do
    devise_for :admins, :path => "", :path_names => { :sign_in => "login", :sign_out => "logout" },
      :skip => [:registrations, :passwords]
    root "dashboards#index"
    resources :collections do
      member do
        delete :delete_image_attachment
      end
    end
    resources :products do
      member do
        delete :delete_image_attachment
      end
    end
    resources :articles do
      member do
        delete :delete_image_attachment
      end
    end
    resources :accounts, param: :slug do
      collection do
        post :batch_update_status
      end
    end
  end

  devise_for :accounts, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "registration", edit: "account/edit" },
    controllers: {
      sessions: "sessions",
      passwords: "passwords",
      registrations: "registrations",
      confirmations: "confirmations"
    }

  resources :accounts, only: [:show, :edit, :update], param: :slug
  root "homes#index"
  # get "/detail", to: "clients#detail"
  # get "/category", to: "clients#category"
  resources :collections, only: :show, param: :slug
  resources :articles, only: :show, param: :slug
  resources :products, only: [:show, :index], param: :slug
  resources :reviews, only: [:create, :destroy, :edit] do
    collection do
      get :show_subreview
      post :create_subreview
    end
  end
end
