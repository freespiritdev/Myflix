Rails.application.routes.draw do
 
  devise_for :users
  resources :movies do
    resources :reviews
  end
  
  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'

end
