Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shorturls
  get '/:short_url', :to => 'shorturls#redirect'

  root :to => 'shorturls#index'
end
