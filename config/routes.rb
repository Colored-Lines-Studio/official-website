Rails.application.routes.draw do
  root 'pages#home'
  get '/hire_us' => 'pages#hire_us'
  post '/mail_us' => 'pages#mail_us'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
