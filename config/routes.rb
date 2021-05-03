Rails.application.routes.draw do
  root 'users# new'
   resources :users, only: [:new, :create, :show, :edit]
   resources :sessions, only: [:new, :create, :destroy]
   resources :pictures do
    collection do
     post :confirm
    end
   end
 end
