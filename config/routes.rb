MiniRailsDemo::Application.routes.draw do
  root to: 'dinners#homepage'
  
  # Index
  get "/dinners" => 'dinners#index', :as => "dinners"
  # New
  get "/dinners/new" => 'dinners#new', :as => "new_dinner"
  # Create
  post "/dinners" => 'dinners#create', :as => "dinners"
  # Show
  get "/dinners/:id" => 'dinners#show', :as => "dinner"
  # Edit
  get "/dinners/:id/edit" => 'dinners#edit', :as => "edit_dinner"
  # Update
  put "/dinners/:id" => 'dinners#update', :as => "dinner"
  # # Destroy
  delete "/dinners/:id" => 'dinners#delete', :as => "dinner"

end