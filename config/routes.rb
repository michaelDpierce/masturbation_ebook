Michaeldeanpierce::Application.routes.draw do
  resources :contacts
  match 'contact', to: 'contacts#new', via: 'get'
  root 'static_pages#work'
  match '/', to: 'static_pages#work', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
end
