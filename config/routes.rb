MiniRailsDemo::Application.routes.draw do
  root to: 'dinners#homepage'
  get "/create" => 'dinners#create'
  get "/save" => 'dinners#save'
  get "/dinners/:id/show" => 'dinners#show'
  get "/list_all" => 'dinners#read'
  
  
end
