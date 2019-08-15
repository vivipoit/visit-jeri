Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'
  get '/:locale/:id' => 'pages#show', as: :page
  get '/:locale' => 'home#index'
end
