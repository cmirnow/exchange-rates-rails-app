Rails.application.routes.draw do
  get 'rates/index'
  root to: 'rates#index'
end
