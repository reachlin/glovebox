Rails.application.routes.draw do
  root "projects#index"
  get 'projects/index'
  get '/projects', to: "projects#index"
  get '/projects/:id', to: "projects#run"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
