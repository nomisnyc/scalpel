Scalpel::Application.routes.draw do
  root :to => 'home#index'
  
resources :users, :except => [:edit] do
  collection do
    get 'edit'
  end
end
post '/shows' => 'websites#shows'
get '/shows' => 'websites#shows'
resources :home, :websites, :presets

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete 'login' => 'session#destroy'
end
