Rails.application.routes.draw do
  resources :movies
  resources :cinemas do
    resources :halls do
      resources :movie_sessions do
        patch 'buy_ticket', to: 'tickets#buy_ticket'
      end
    end
  end
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  resources :users, only: [:show, :edit, :update]
  
  root to: "home#index"
  
end
