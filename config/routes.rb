Rails.application.routes.draw do
 
root 'pages#home'
 get '/home', to: 'pages#home'
 
resources :recipes do

member do
   post 'like' 
end
    
end



#/recipes/2/like



resources :chefs, except: [:new]

get '/register', to: 'chefs#new'

end
