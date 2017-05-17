Rails.application.routes.draw do
  resources :entries
  resources :debts
  root 'pages#index'
  devise_for :users,
            :controllers => {
                              :registrations => 'users/registrations',
                            }
  resources :friendships do
    member do
      delete :delete_user, to: 'friendships#delete_user', as: :delete_user
    end
  end

  resources :users
end
