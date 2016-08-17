Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

  devise_for :users
  resources :users
    resources :users do
        resources :areas
        resources :educations
        resources :researches
        resources :courses
    end
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root to: "pages#home"
end
