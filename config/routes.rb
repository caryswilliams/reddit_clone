Rails.application.routes.draw do
  resources :posts do
    resources :comments
    member do
      post 'upvote'
      post 'downvote'
    end
  end


  get 'home/index'
  root 'home#index'

end




 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html