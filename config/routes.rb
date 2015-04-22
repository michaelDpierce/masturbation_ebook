Michaeldeanpierce::Application.routes.draw do
  resources :contacts
  match 'the_truth_about_masturbation_send_me_my_free_chapter', to: 'contacts#new', via: 'get'
  root 'static_pages#index'
  match '/', to: 'static_pages#index', via: 'get'
  match '/blog', to: 'static_pages#blog', via: 'get'
  match '/corn_flakes_and_masturbation', to: 'static_pages#article_one', via: 'get'
  match '/monkeys_enjoy_porn', to: 'static_pages#article_two', via: 'get'
  match '/is_masturbation_a_sin', to: 'static_pages#article_three', via: 'get'
  match '/the_truth_about_masturbation_quotes', to: 'static_pages#quotes', via: 'get'
end
