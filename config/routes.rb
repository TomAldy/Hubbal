Rails.application.routes.draw do
  resources :messages

  get '/message/outbox' => 'messages#outbox'

  resources :notes
  resources :absences
  resources :contents
  resources :contents
  resources :contents
  resources :dashboard

  root :to => 'frontend#index'
  get '/about' => 'frontend#about'
  get '/history' => 'frontend#history'
  get '/location' => 'frontend#location'
  get '/support' => 'frontend#support'

  resources :filelinks
  resources :contents
  resources :timetable_entries

  get '/startselect/:timetable/:day' => 'timetable_entries#startselect'
  get '/finishselect/:timetable/:day' => 'timetable_entries#finishselect'

  resources :timetables
  resources :rooms
  resources :enrolments
  resources :courses

  get '/course/:title' => 'courses#html'

  resources :groups
  resources :users
  resources :sessions

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/install' => 'install#index'
  post 'install' => 'install#create'

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
