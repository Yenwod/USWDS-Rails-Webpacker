Rails.application.routes.draw do
  root 'main#landing'
  get 'main/landing'
  get 'main/features'
  get 'main/pricing'
  get 'main/about'
  get 'main/contact'
  get 'main/resources'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
