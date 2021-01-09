Rails.application.routes.draw do
  scope "(:locale)", local: /#{I18n.available_locales.join("|")}/ do
  get 'session/login'
  post 'session/create'
  get 'session/logout'
  resources :users
  root 'table#input'
  get 'table/input'
  get 'table/view_one'
  get 'table/view_two'
  get 'table/cached', :defaults => { :format=>'xml'}
  get 'table/cached_two', :defaults => { :format=>'xml'}
  get 'table/view_tree'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
end
