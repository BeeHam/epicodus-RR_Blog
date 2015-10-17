Rails.application.routes.draw do
  resources :posts do
    resources :tags
  end

  resources :tags do
    resources :posts
  end
end
