Rails.application.routes.draw do
  
root 'properties#index'

  # Routes for the Feedback resource:
  # CREATE
  get "/feedbacks/new", :controller => "feedbacks", :action => "new"
  post "/create_feedback", :controller => "feedbacks", :action => "create"

  # READ
  get "/feedbacks", :controller => "feedbacks", :action => "index"
  get "/feedbacks/:id", :controller => "feedbacks", :action => "show"

  # UPDATE
  get "/feedbacks/:id/edit", :controller => "feedbacks", :action => "edit"
  post "/update_feedback/:id", :controller => "feedbacks", :action => "update"

  # DELETE
  get "/delete_feedback/:id", :controller => "feedbacks", :action => "destroy"
  #------------------------------

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"
  get "/my_favorites", :controller => "favorites", :action => "my_favorites"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Proposal resource:
  # CREATE
  get "/proposals/new", :controller => "proposals", :action => "new"
  post "/create_proposal", :controller => "proposals", :action => "create"

  # READ
  get "/proposals", :controller => "proposals", :action => "index"
  get "/proposals/:id", :controller => "proposals", :action => "show"

  # UPDATE
  get "/proposals/:id/edit", :controller => "proposals", :action => "edit"
  post "/update_proposal/:id", :controller => "proposals", :action => "update"

  # DELETE
  get "/delete_proposal/:id", :controller => "proposals", :action => "destroy"
  #------------------------------

  # Routes for the Property resource:
  # CREATE
  get "/properties/new", :controller => "properties", :action => "new"
  post "/create_property", :controller => "properties", :action => "create"

  # READ
  get "/properties", :controller => "properties", :action => "index"
  get "/properties/:id", :controller => "properties", :action => "show"

  # UPDATE
  get "/properties/:id/edit", :controller => "properties", :action => "edit"
  post "/update_property/:id", :controller => "properties", :action => "update"

  # DELETE
  get "/delete_property/:id", :controller => "properties", :action => "destroy"
  #------------------------------

  devise_for :users

get "/users", :controller => "users", :action => "index"
get "/users/:id", :controller => "users", :action => "show"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
