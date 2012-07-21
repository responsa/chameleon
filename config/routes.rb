Rails.application.routes.draw do
  match 'widgets/:id' => 'chameleon/widgets#show'
end
