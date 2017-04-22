Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'log_out', sign_up: 'register'}
  resources :calenders, except: [:show]
  get 'calender/:id', to: 'calenders#show', as: 'calender_show'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#about'

  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end
