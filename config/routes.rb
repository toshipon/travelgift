Travelgift::Application.routes.draw do

  resources :homes
  resources :hotels, :only => [:index, :show] do
      collection do
        get :search
      end
  end

  root :to => 'homes#index'
end
