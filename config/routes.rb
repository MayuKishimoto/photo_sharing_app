Rails.application.routes.draw do
  root 'users#new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :favorites, only: [:create, :destroy]
  # メールの時必要？
  # mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
