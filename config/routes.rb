Rails.application.routes.draw do
  resources :friend_requests do
    member do
      post :send_request, to: 'friend_requests#send_request', as: :send_request
      post 'respond/:token', to: 'friend_requests#respond', as: :respond
    end
  end
  resources :entries
  resources :debts
  root 'pages#index'
  devise_for :users,
            :controllers => {
                              omniauth_callbacks: 'users/omniauth_callbacks',
                              :registrations => 'users/registrations',
                            }
  resources :friendships do
    member do
      delete :delete_user, to: 'friendships#delete_user', as: :delete_user
      delete :unfriend, to: 'friendships#unfriend', as: :unfriend
    end
  end

  resources :users

end
