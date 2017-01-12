Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root :to => 'users#new'
  get 'result' => 'scrape#scrape'
  get 'ticker' => 'scrape#ticscrape'

end
