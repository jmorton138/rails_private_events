Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions', registrations: 'users/registrations'
  }



  resources :events do
    member do
      get 'attend'
      get 'cancel_attend'
    end
    resources :invitations, only: [:new, :create]


  end

  resources :users 
  resources :invitations, only: [:index] do
    member do
      get 'reject'
      get 'accept'
    end
  end
  

  resources :event_attendings, only: [:new, :create]
  
  root "events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
