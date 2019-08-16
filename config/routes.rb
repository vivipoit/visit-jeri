Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'home#index'
  get '/:locale/:id' => 'page_locales#show', as: :page_locale
  get '/:locale/item/:id' => 'item_locales#show', as: :item_locale
  get '/:locale' => 'home#index'
end
