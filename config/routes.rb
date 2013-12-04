Csc667::Application.routes.draw do
  get "users/new"
  
  root to: "pages#home"
 
  resources :users

  resources :friendships, only: [:create]



  resources :sessions, only: [:new, :create, :destroy]
  resources :grocery_lists
  resources :list_items
  match '/signup',  to: 'users#new',            via: 'get'
  match '/help',  to: 'pages#help',            via: 'get'
  match '/signin', to: 'sessions#new',     via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


  
  match '/signup',  	to: 'users#new',            	via: 'get'
  match '/help',  	to: 'pages#help',		via: 'get'
  match '/signin', 	to: 'sessions#new',     	via: 'get'
  match '/signout', 	to: 'sessions#destroy',     	via: 'delete'
  match '/meal/plan', 	to: 'meals#index', 		via: 'get'
  match '/meal/plan/type', 	to: 'meals#meal_type', 	via: 'get'
  match '/food/search',		to: 'food#search',	via: 'get'
  match '/food/search/results', to: 'food#db_search', 	via: 'post'
  match '/food/search/results', to: 'food#results', 	via: 'get'
  match '/food/nutritional/', to: 'food#info', 	via: 'get'  
  match '/food/add_through_modal', to: 'food#addmodal', via: 'get'
  match '/meal/food/add_item',  to: 'food#add_item', via: 'post'
  match '/meal/add_food', to: 'food#add_to_meal', via: 'get'
  match '/meal/food/search/results', to: 'food#item_search', via: 'post'
  match '/meal/food/search/results', to: 'food#item_search', via: 'get'
  match '/calendar', to: 'calendar#index', via: 'get'
  match '/calendar/meals/', to: 'calendar#show', via: 'get'
  
  
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

