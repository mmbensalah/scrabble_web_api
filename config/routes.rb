Rails.application.routes.draw do
  root "welcome#index"
  post '/find', to: 'find#create'
  get '/word-search', to: 'word_search#index'
end
