Cupom::Application.routes.draw do
  

  resources :termo_usos


  resources :empresas


  # devise_for :users

  get "meuperfil/index"

  get "meuscupons/index"

  get "indique/index"

  get "parceiro/index"

  get "anunciantes/index"

  get "termos/index"

  get "duvidas/index"

  get "comofunciona/index"

  #devise_for :users
  
 
  
  match 'auth/failure', to: redirect('/')

  devise_scope :user do
  
  get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session

  get 'sign_up', :to => 'devise/registrations#new', :as => :new_user_registration

  get 'users/sign_up', :to => 'devise/registrations#new', :as => :new_user_registration
  
  get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  
  end
  

  get "/ver_cupom/:id_cupom" => "portal#show", :as => :ver_cupom
  get "/ver_cupom/baixar/:id_cupom" => "portal#baixar", :as => :baixar
  get "/imprimir_cupom/:id_cupom" => "portal#imprimir", :as => :imprimir_cupom
  
  devise_for :users, :controllers => { :registrations => 'registrations',
                                       :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :offers


  resources :cities


#rota de categorias 

  resources :categories


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'portal#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
