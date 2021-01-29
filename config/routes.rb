Rails.application.routes.draw do
  root to: 'pages#home'
  resources :questions, only: :show do
    resources :answers, only: [] do
      resources :results, only: :create
    end
  end
  get '/summary', to: 'pages#summary'
end
