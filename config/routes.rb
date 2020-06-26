Rails.application.routes.draw do
  get 'messages/index'

  root "messages#index"
  
  get 'shared/side_bar'

  root 'shared#side_bar'
end
