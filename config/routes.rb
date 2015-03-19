MiniRailsDemo::Application.routes.draw do
  root to: 'dinners#homepage'
  
  # Index
  get "/dinners" => 'dinners#index', :as => "dinners"
  # # New
  # get "/dinners/new" => 'dinners#new' :as => "new_dinner"
  # # Create
  # post "/dinners" => 'dinners#create' :as => "dinners"
  # # Show
  # get "/books/:id" => 'dinners#show' :as => "dinner"
  # # Edit
  # get "/dinners/:id/edit" => 'dinners#edit' :as => "edit_dinner"
  # # Update
  # put "/dinners/:id" => 'dinners#update' :as => "dinner"
  # # Destroy
  # delete "/books/:id" => 'dinners#delete' :as => "dinner"
  

  # get "/list_all" => 'dinners#list_all'
  
  get "/create" => 'dinners#create'
  
  get "/save" => 'dinners#save'
  
  get "/dinners/:id/show" => 'dinners#show'
  
  get "/dinners/:id/edit" => 'dinners#edit'
  
  get "/update" => 'dinners#update'
  
  get "/dinners/*id/destroy" => 'dinners#destroy'
  
end