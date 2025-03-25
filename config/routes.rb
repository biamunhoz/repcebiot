Rails.application.routes.draw do
  
  resources :logs
  resources :repositorios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #login e logout
  get 'welcome/login', as: 'login'
  get 'welcome/callback'
  get 'logout' => 'welcome#destroy', as: 'logout'

  resources :genealvos
  resources :linhagems
  resources :fenotipos
  resources :fundos
  resources :bioterios
  resources :genotipos
  resources :origems
  resources :primers
  resources :tipo_vinculos
  resources :usuarios
  resources :genesecundarios
  resources :permitidos
  resources :perfils
  
  root 'welcome#login'

  #root 'fundos#index'
  
  get 'classifica/:id' => 'linhagems#classifica', as: 'classifica'
  get 'resultindex' => 'linhagems#resultindex', as: 'resultindex'

  get 'ativalin/:id' => 'linhagems#ativalin', as: 'ativalin'

end
