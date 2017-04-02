Rails.application.routes.draw do
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
