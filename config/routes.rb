Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :restaurants do
        resources :foods, only: %i[index]
      end
      resources :line_foods, only: %i[index create]
      put 'line_foods/reolace', to: 'line_foods#replace'
      resources :orders, only: %i[create]
    end
  end
end
