Rails.application.routes.draw do
  get '/userpage/:id' => 'application#show'
  get '/new_user' => 'application#new'
  get '/create_user' => 'application#create'
  get '/userpage/:id/edit' => 'application#edit'
  get '/update_user/:id' => 'application#update'
end
