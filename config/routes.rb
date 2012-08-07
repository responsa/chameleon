Rails.application.routes.draw do
  namespace :chameleon do
    resources :widgets, :only => :show, :defaults => { :format => 'xml' }
  end
end
