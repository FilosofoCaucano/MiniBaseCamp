Rails.application.routes.draw do
  devise_for :users

  resources :projects do
    resources :tasks do
      member do
        patch :toggle_status
      end
      resources :comments, only: [:create]
    end
  end

  root "projects#index"
end
