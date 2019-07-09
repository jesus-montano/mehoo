Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
  get 'events/:id/register', to: 'events#register', as: 'register_to_event'
  resources :users
end
