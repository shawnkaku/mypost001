PostitTemplate::Application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :edit, :update]
end
