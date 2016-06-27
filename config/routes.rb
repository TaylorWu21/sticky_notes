Rails.application.routes.draw do
  root 'home#index'

  namespace :api do
    resources :notes
  end

  # KEEP THIS AT THE BOTTOM
  get '*unmatched_route', to: 'home#index'
end
