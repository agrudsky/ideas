Rails.application.routes.draw do
  get '/movie/:id' => 'application#show'
  get '/movie/:id/wm' => 'application#showwm'
  get '/new_movie' => 'application#new'
  get '/create_movie' => 'application#create'
  get '/movie/:id/edit' => 'application#edit'
  get '/update_movie/:id' => 'application#update'
  get '/movie/:id/delsure' => 'application#delsure'
  get '/movie/:id/delete' => 'application#destroy'
  get '/movies' => 'application#index'
end
