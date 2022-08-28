Rails.application.routes.draw do
  get 'posts/new',to:"posts#new",as:"posts_new"
  post "posts/create",to:"posts#create",as:"posts_create"
  get 'posts/show',to:"posts#show",as:"posts_show"
  resources :categories
  delete 'posts/destroy',to:"posts#destroy",as:"posts_destroy"
  get '/users/new',to:"users#new",as:"users_new"
  post '/users/create',to:"users#create",as:"users_create"
  get '/users/:id',to:"users#show",as:"users_show"
  get '/users/:id/edit',to:"users#edit",as:"users_edit"
  patch"/users/id/edit",to:"users#update",as:"users_update"
  get '/logins/new',to:"logins#new",as:"login_new"
  post '/logins/create',to:"logins#create",as:"login_create"
  delete '/logins/destroy',to:"logins#destroy",as:"logout"
  root to:'books#home'
end