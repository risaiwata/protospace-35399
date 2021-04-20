Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index" #ルートパスの設定
  #post "/" => "prototypes#index"
  resources :prototypes do
    resources :comments, only: :create
  end
  resources :prototypes,  only: [:index, :new, :create, :show, :edit, :update, :destroy ] #アクションの定義
  post 'prototypes/:id' => 'prototypes#show'
  get "prototypes/show"
  resources :users
end
