Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [ :index, :show, :create, :new ] do
    resources :reviews, only: [ :new, :create ]
  end

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  # tous les restos
  # get "restaurants", to: "restaurants#index"

  # # ajouter un resto
  # get "restaurants/new", to: "restaurants#new"

  # # voir le resto ajouté
  # post "restaurants", to: "restaurants#show"

  # # details resto + avis
  # get "restaurants/:id", to: "restaurants#show"

  # # ajout nouvel avis
  # get "restaurants/38/reviews/new", to:
  # post "restaurants/38/reviews", to:
end
