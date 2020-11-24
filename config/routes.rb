Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :posts do
  	resources :likes
	end
	get  'users/suggestion', to: 'users#suggestion', as: :'suggestion'
	post 'users/:id/follow', to: 'users#follow', as: :'follow'
 	delete 'users/:id/unfollow', to: 'users#unfollow', as: :'unfollow'
  get  'users/:id/disp', to: "users#disp", as: :'disp'
  root 'welcome#index'
end
