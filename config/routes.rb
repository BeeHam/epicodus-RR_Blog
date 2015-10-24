Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  get 'tags/:tag', to: 'tags#show', as: :tag

  resources :posts do
    resources :comments, except: [:index, :show]
  end
end
