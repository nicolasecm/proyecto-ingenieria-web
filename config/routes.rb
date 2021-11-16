Rails.application.routes.draw do
  
  match 'shopping_carts/:user_id', to: 'shopping_carts#agregarObjetoCarrito', via: [:get, :post], as: :agregarObjetoCarrito
  resources :shopping_carts
  devise_for :owner_companies, path: 'users', controllers:{
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  devise_for :users, path: 'owner_companies', controllers:{
    sessions: "owner_companies/sessions",
    registrations: "owner_companies/registrations"
  }
  resources :categories
  resources :companies
  resources :payment_methods
  match 'products_company/:company_id', to: 'products#products_company', via: [:get, :post], as: :products_company
  resources :products

  devise_scope :user do
    authenticated :user do
      namespace :users do
      end
    end
  end

  devise_scope :owner_companies do
    authenticated :owner_companies do
      namespace :owner_companies do
      end
    end
  end

  root to: 'main#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
