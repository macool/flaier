Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'surveys#index'
  resources :surveys, path: "e" do
    resources :status, path: "s" do
      resources :results, path: "r"
    end
  end
end
