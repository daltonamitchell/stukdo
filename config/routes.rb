Stukdo::Application.routes.draw do

  resources :tasks

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root "pages#home"
  get 'about' => 'pages#about'

  resources :tasks do
    member do
      put :change
    end
  end

end
