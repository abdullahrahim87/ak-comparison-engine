Rails.application.routes.draw do
  resources :product_attributes
  resources :products
  resources :attributes
  resources :entities
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  scope '/api' do
    resources :attributes
    resources :entities
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
