Rails.application.routes.draw do
  get '/users/new',to:"users#new",as:"users_new"
  post '/users/create',to:"users#create",as:"users_create"
  get '/users/:id',to:"users#show",as:"users_show"
  get '/users/:id/edit',to:"users#edit",as:"users_edit"
  patch"/users/id/edit",to:"users#update",as:"users_update"
  delete "users/:id/resign",to:"users#resign",as:"users_resign"
  get "categories/:cid",to:"categories#show",as:"categories"

  get '/logins/new',to:"logins#new",as:"login_new"
  post '/logins/create',to:"logins#create",as:"login_create"
  delete '/logins/destroy',to:"logins#destroy",as:"logout"
  
  get "/renew",to:"users#renew",as:"renew"
  post "/reupdate",to:"users#reupdate",as:"reupdate"

  root to:'books#home'
  get 'posts/new',to:"posts#new",as:"posts_new"
  post "posts/create" ,to:"posts#create", as: "posts_create"
  get 'posts/:id',to:"posts#show",as:"posts_show"
  delete 'posts/:id',to:"posts#destroy",as:"posts_destroy"

  post 'like/:id' ,to:'likes#create', as: 'like_create'
  delete "like/:id",to:"likes#destroy",as:"like_destroy"

  get "password_reset/new",to:"password_resets#new",as:"password_reset_new"
  post "password_reset/new",to:"password_resets#user_find",as:"user_find"
  get "password_reset/reset/:user_id",to:"password_resets#reset",as:"password_reset"
  patch "password_reset/reset/:user_id",to:"password_resets#update",as:"password_reset_update"
end