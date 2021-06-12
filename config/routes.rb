Rails.application.routes.draw do
  namespace :api do
    resources :messages, only: %i[] do
      collection do
        get 'public'
        get 'protected'
      end
    end
  end
end
