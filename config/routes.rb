Rails.application.routes.draw do
  get 'appointments/create'
  get 'appointments/new'
  get 'appointments/show'
  get 'appointments/edit'
  get 'appointments/update'
  get 'appointments/destroy'
  get 'bugs/create'
  get 'bugs/new'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bugs, only: [:create, :new] do
    resources :appointments, only: [:create, :new, :update, :edit]
  end
  resources :reports, only: [:show, :destroy]
end
