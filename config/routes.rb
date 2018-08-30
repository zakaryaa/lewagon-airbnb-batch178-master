Rails.application.routes.draw do
  
 

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :apartments do
    resources :bookings, except: [:edit, :update] do
      resources :reviews
    end
  end
  get 'users/:user_id/host', to: 'pages#host', as: :host_user
  post 'apartments/upload', to: 'apartments#upload', as: :apartments_img_upload
end


