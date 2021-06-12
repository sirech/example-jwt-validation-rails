Rails.application.routes.draw do
  namespace :api do
    resources :messages, only: %i[] do
      collection do
        get 'public'
        get 'protected'
        get 'admin'
      end
    end
  end
end
