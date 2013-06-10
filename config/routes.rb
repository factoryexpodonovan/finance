Finance::Application.routes.draw do
  
  
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'static_pages#home'
  
  
  #routes for static pages
  match '/admin',       to: 'static_pages#admin'
  match '/leads',       to: 'finance_leads#index'
  
  match 'admin/add',    to: 'finance_customers#new'
  
  match '/thankyou',    to: 'static_pages#thankyou'

   
  get "static_pages/home"

  get "static_pages/admin"

  get "static_pages/showlead"

  localized do
    resources :finance_customers
    resources :finance_leads
  end

  


  resources :allowed_states

  resources :states
  
  resources :sessions, only: [:new, :create, :destroy]
    
  match '/signup',  to: 'finance_customers#new'
  
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete



end
