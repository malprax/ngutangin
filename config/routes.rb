Rails.application.routes.draw do
  resources :friend_requests do
    member do
      post :send_request, to: 'friend_requests#send_request', as: :send_request
      get 'respond/:token', to: 'friend_requests#respond', as: :respond
    end
  end
  get 'hello_world', to: 'hello_world#index'
  resources :entries
  resources :debts do
    member do
      get :approve, to: 'debts#approve', as: :approve
      get :reject, to: 'debts#reject', as: :reject
    end
    collection do
      # with friend id
      get 'user/:id/create_utang', to: 'debts#new_utang', as: :create_utang
      get 'user/:id/create_piutang', to: 'debts#new_piutang', as: :create_piutang
      # without friend id
      get 'user/create_utang', to: 'debts#new_debt', as: :add_utang
      post 'user/create_utang', to: 'debts#create_utang'
      get 'user/create_piutang', to: 'debts#new_credit', as: :add_piutang
      post 'user/create_piutang', to: 'debts#create_piutang'
    end
  end

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

  resources :utang
  resources :piutang

  resources :users

  get 'user/edit', to: 'users#edit', as: :edit_password
  patch 'user/update', to: 'users#update_password', as: :update_password

end
