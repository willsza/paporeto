Rails.application.routes.draw do


  # Uploadbox - Upload de imagens
  mount Uploadbox::Engine => '/uploadbox', as: :uploadbox

  # Devise - Login e controle de acesso
  devise_for :users

  # Área de administração do projeto ------------------------------------
  namespace :admin do
    resources :categories
    resources :articles
    resources :users, except: :show
    
    root 'articles#index'
  end

  # Área de front-end do projeto ----------------------------------------
  resources :categories, path: 'artigos', only: [] do
    resources :articles, path: '', only: [:index, :show]
  end
  
  resources :suggested_articles, only: [:new, :create]
  
  root 'home#index'

end
