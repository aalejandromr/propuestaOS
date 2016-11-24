Rails.application.routes.draw do
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

  devise_for :user
  
  devise_scope :user do
      root to: 'users#show'
  end

  #root to: 'admins/sessions#new'




  #root to: 'users#index'

  #scope '/admin' do
   #devise_for :users
  #end

  namespace :admins do

    resources :files do
      collection do
        get :update_file_order
      end
    end

    resources :users do
      collection do
        get :profile
      end
    end

    resources :courses do
      collection do
        get :info_courses
        get :specific_course
        get :create
      end
    end

    resources :attachments do
      collection do
        get :create
      end
    end

    resources :modulos do
      collection do
        get :create
      end
    end


  end
  
  get 'users/:user_id' => 'users#profile', :via => [:post], :as => :profile
  get 'cursos/:id' => 'usercourses#show', :via => [:POST], :as => :mycourses
  get 'modulos/:modulo_id' => 'courses#info_courses', :via => [:post], :as => :courses
  get 'courses/:course_id' => 'courses#specific_course', :via => [:post], :as => :specific_course
  get 'courses/:course_id/attachment/:course_attachment_id' => 'attachments#new', :via => [:post], :as => :new_attachment
  get 'files' => 'files#show', :via => [:get], :as => :convert_attachment
  get 'courses' => 'courses#nocourses', :via => [:get], :as => :nocourses
  resources :modulos
  resources :courses
  resources :attachments
end
