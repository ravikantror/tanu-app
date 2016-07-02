Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

 get "home" => 'posts#index',as: 'home'
 get "posts" => 'posts#index',as: 'posts'
 post "posts" => 'posts#create'
 get "posts/new" => 'posts#new',as: 'new_post'
 get "posts/:id"=> 'posts#show',as: 'post' 
 get "posts/:id/edit"=> 'posts#edit',as: 'edit_post'
 post "posts/:id" => 'posts#update' ,as: 'update'
 get "posts/:id/delete" =>'posts#destroy',as: 'delete_post'
 
 


  devise_for :users
  
  
  post "friendship" => 'friendship#create'
  get "friendship/:id"=> 'friendship#show',as: 'friend'
  get "friendship/:id/delete" =>'friendship#destroy',as: 'delete_friend'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'users#index'
   root 'posts#index'
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
