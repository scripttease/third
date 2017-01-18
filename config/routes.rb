Rails.application.routes.draw do
  root to: 'recommendations#new', as: 'new_recommendation'

  post 'recommendations', to: 'recommendations#create', as: 'recommendations'
end
