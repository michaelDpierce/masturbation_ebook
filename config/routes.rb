Michaeldeanpierce::Application.routes.draw do
  root 'static_pages#work'
  match '/', to: 'static_pages#work', via: 'get'
  match '/work', to: 'static_pages#work', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
end
