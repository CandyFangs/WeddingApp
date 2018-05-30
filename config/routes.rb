Rails.application.routes.draw do
  root 'home#start'
  get '/aboutus' => 'home#aboutus', as: 'aboutus'
  get '/aboutwedding' => 'home#aboutwedding', as: 'aboutwedding'
  resources :guests

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
