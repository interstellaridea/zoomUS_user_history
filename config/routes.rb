Rails.application.routes.draw do
  root 'welcome#home'

  resources :users

  get "find_users", to: 'users#find_users'
  get 'search_users', to: 'users#search'

 	resources :meetings do
 		resources :participants
 	end

  get 'meeting_participants/:uuid', to: 'participants#search', as: 'participants_list'
  
end