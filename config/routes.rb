Rails.application.routes.draw do
  get '/idea/:id' => 'application#show'
  get '/idea/:id/wm' => 'application#showwm'
  get '/new_idea' => 'application#new'
  get '/create_idea' => 'application#create'
  get '/idea/:id/edit' => 'application#edit'
  get '/update_idea/:id' => 'application#update'
  get '/idea/:id/delsure' => 'application#delsure'
  get '/idea/:id/delete' => 'application#destroy'
  get '/ideas' => 'application#index'
end
