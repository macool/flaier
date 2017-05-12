Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'intro#show'
  resources :surveys, path: "e" do
    resources :status, path: "s" do
      resources :situations, path: "t" do
        resources :results, path: "r"
      end
    end
  end
end
