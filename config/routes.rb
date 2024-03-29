Rails.application.routes.draw do
  get 'postingan/index'
  get '/index' => 'home#index'
  get '/postingan' => 'postingan#index'
  get '/artikel' => 'home#artikel'
  get '/about' => 'home#about'
  get '/' => 'home#index'
  get '/postingan/detail/:id' => 'postingan#detail'
  get '/postingan/input' => 'postingan#input'
  post '/postingan/create' => 'postingan#create'
  get '/postingan/edit/:id' => 'postingan#edit'
  post '/postingan/update/:id' => 'postingan#update'
  get '/postingan/delete/:id' => 'postingan#delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  # Defines the root path route ("/")
  get "up" => "rails/health#show", as: :rails_health_check
  get "/home", to: "home#index"

root "home#index"
end
