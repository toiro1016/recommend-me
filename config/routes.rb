Rails.application.routes.draw do
 devise_for :users

 root to: "recommend#index"

 resources :user, only:[:show]
end
