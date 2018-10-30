Rails.application.routes.draw do
  root "welcome#index"
  post '/find', to: 'find#create'
  get '/word-search', to: 'word_search#index'
  namespace :api do
		namespace :v1 do
			resources :games, only: [:show]
		end
	end
end
