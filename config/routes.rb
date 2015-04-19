Michaeldeanpierce::Application.routes.draw do
  resources :contacts
  match 'contact', to: 'contacts#new', via: 'get'
  root 'static_pages#index'
  match '/', to: 'static_pages#index', via: 'get'
  match '/the_truth_about_masturbation_quotes', to: 'static_pages#quotes', via: 'get'
end
