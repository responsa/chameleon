Rails.application.routes.draw do
  resources :widgets, :only => :show
end
