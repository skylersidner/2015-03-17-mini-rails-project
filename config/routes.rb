MiniRailsDemo::Application.routes.draw do
  root to: 'dinners#homepage'
  get "/create" => 'dinners#create'
  get "/save" => 'dinners#save'
  get "/dinners/*id/show" => 'dinners#show'
  get "/dinners/*id/edit" => 'dinners#edit'
  get "/update" => 'dinners#update'
  get "/list_all" => 'dinners#list_all'
  get "/dinners/*id/destroy" => 'dinners#destroy'
  
end
