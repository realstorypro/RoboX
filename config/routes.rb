Rails.application.routes.draw do
  namespace :management do
      resources :blueprints
      resources :builds

      root to: "blueprints#index"
    end
  namespace :api do
    namespace :v1 do
      resource :builds, only: [:create] do
        get :status, on: :member
        post :update_url, on: :member
        post :disable, on: :member
      end
    end
  end

  root to: 'welcome#index'

end
