Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'

  scope 'pt', locale: 'pt' do
    root to: 'home#index'
    resources :pages, only: [:show]
  end

  scope 'en', locale: 'en' do
    root to: 'home#index'
    resources :pages, only: [:show]
  end
end
