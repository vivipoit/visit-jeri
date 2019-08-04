Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope 'pt-br', :locale => 'pt-br' do
    root to: 'home#index'
    get 'home/index'
  end

  scope 'en-us', :locale => 'en-us' do
  end
end
