Rails.application.routes.draw do
get "about", to:"about#index"

get "sign_up", to:"registrations#new"
post "users", to: "registrations#create"
delete "logout", to:"sessions#destroy"

root to:"main#index"
end 
