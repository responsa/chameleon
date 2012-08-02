Rails.application.routes.draw do
  match 'chameleon_widgets/:id' => 'chameleon/widgets#show'
end
