Rails.application.routes.draw do
  
  root 'items#home'

  get '/buyers' => 'buyers#index', as: 'buyers'
  post '/buyers' => 'buyers#create'
  get '/buyers/new' => 'buyers#new', as: 'new_buyer'
  get '/buyers/:id/edit' => 'buyers#edit', as: 'edit_buyer'
  get '/buyers/:id' => 'buyers#show', as: 'buyer'
  put '/buyers/:id' => 'buyers#update'
  patch '/buyers/:id' => 'buyers#update'
  delete '/buyers/:id' => 'buyers#destroy'

  get '/items' => 'items#index', as: 'items'
  post '/items' => 'items#create'
  get '/items/new' => 'items#new', as: 'new_item'
  get '/items/:id/edit' => 'items#edit', as: 'edit_item'
  get '/items/:id' => 'items#show', as: 'item'
  put '/items/:id' => 'items#update'
  patch '/items/:id' => 'items#update'
  delete '/items/:id' => 'items#destroy'

  get '/shops' => 'shops#index', as: 'shops'
  post '/shops' => 'shops#create'
  get '/shops/new' => 'shops#new', as: 'new_shop'
  get '/shops/:id/edit' => 'shops#edit', as: 'edit_shop'
  get '/shops/:id' => 'shops#show', as: 'shop'
  put '/shops/:id' => 'shops#update'
  patch '/shops/:id' => 'shops#update'
  delete '/shops/:id' => 'shops#destroy'


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
