Rails.application.routes.draw do
  root to: 'holidays#index'
  resources :holidays
end
