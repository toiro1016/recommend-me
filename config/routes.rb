Rails.application.routes.draw do
  devise_for :users
 root to: "recommend#index"
end
