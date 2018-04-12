Rails.application.routes.draw do
  # Routes for the Bookmarked_dishse resource:
  # CREATE
  get "/bookmarked_dishses/new", :controller => "bookmarked_dishses", :action => "new"
  post "/create_bookmarked_dishse", :controller => "bookmarked_dishses", :action => "create"

  # READ
  get "/bookmarked_dishses", :controller => "bookmarked_dishses", :action => "index"
  get "/bookmarked_dishses/:id", :controller => "bookmarked_dishses", :action => "show"

  # UPDATE
  get "/bookmarked_dishses/:id/edit", :controller => "bookmarked_dishses", :action => "edit"
  post "/update_bookmarked_dishse/:id", :controller => "bookmarked_dishses", :action => "update"

  # DELETE
  get "/delete_bookmarked_dishse/:id", :controller => "bookmarked_dishses", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Venue resource:
  # CREATE
  get "/venues/new", :controller => "venues", :action => "new"
  post "/create_venue", :controller => "venues", :action => "create"

  # READ
  get "/venues", :controller => "venues", :action => "index"
  get "/venues/:id", :controller => "venues", :action => "show"

  # UPDATE
  get "/venues/:id/edit", :controller => "venues", :action => "edit"
  post "/update_venue/:id", :controller => "venues", :action => "update"

  # DELETE
  get "/delete_venue/:id", :controller => "venues", :action => "destroy"
  #------------------------------

  # Routes for the Dish resource:
  # CREATE
  get "/dishes/new", :controller => "dishes", :action => "new"
  post "/create_dish", :controller => "dishes", :action => "create"

  # READ
  get "/dishes", :controller => "dishes", :action => "index"
  get "/dishes/:id", :controller => "dishes", :action => "show"

  # UPDATE
  get "/dishes/:id/edit", :controller => "dishes", :action => "edit"
  post "/update_dish/:id", :controller => "dishes", :action => "update"

  # DELETE
  get "/delete_dish/:id", :controller => "dishes", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
