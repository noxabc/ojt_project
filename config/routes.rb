Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      resources :users
      resources :historylogs
      resources :triptransactions
      resources :historyloads
      resources :balanceloads
    end
  end
end
