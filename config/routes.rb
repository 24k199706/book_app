Rails.application.routes.draw do
  get 'users/new',to:"users#new",as:"users_new"
  post 'users/create',to:"users#create",as:"users_create"
  get 'users/:id',to:"users#show",as:"users_show"
  get 'users/:id/edit',"users#edit",as:"users_edit"
  get 'logins/new',to:"logins#new",as:"login_new"
  post 'logins/create',to:"logins#create",as:"login_create"
  delete 'logins/destroy',to:"logins#destroy",as:"login_destroy"
  root to:'books#home'
end
