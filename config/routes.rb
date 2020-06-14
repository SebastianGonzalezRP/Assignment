Rails.application.routes.draw do
  get 'home/index' => 'home#index'
  get 'event/:id' => 'events#show'
  get 'api/v1/events/index' => 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/profile/account' => 'profiles#account', as: :account
  get '/search' => 'search#search', as: :search
  post 'organizations/new', to: "organizations#create"

  # Limit possible actions on resources to index and show...

  namespace :api, defaults: { format: :json } do
   namespace :v1 do
     resources :events do
       resources :comments
     end
   end
  end



  resources :events, defaults: { format: :html }
  resources :comments, defaults: { format: :html }


  resources :organizations
  post 'organizations/new', to: "organizations#create"
  post 'organizations/add_member', to: "organizations#add_member"


  resources :profiles   #, only: [:show, :index, :edit]
end
