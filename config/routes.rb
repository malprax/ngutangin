Rails.application.routes.draw do
  resources :entries
  resources :debts
  root 'pages#index'
  devise_for :users,
            :controllers => {
                              :registrations => 'users/registrations',
                            }
end
