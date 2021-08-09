Rails.application.routes.draw do
 devise_for :users,
 controllers: { 
   registrations: 'registrations',
   sessions: :sessions
 }

 root to: "recommend#index"

 resources :user, only:[:show, :index]
end
