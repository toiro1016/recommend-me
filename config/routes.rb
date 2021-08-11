Rails.application.routes.draw do
 devise_for :users,
 controllers: { 
   registrations: 'registrations',
   sessions: :sessions
 }

 root to: "recommend#index"

<<<<<<< Updated upstream
 resources :user, only:[:show, :index]
=======
 resources :user, only:[:show]

 resources :reactions, only: [:create]

>>>>>>> Stashed changes
end
