Rails.application.routes.draw do
  resources :national_parks

  get '/calculo', to: 'pablito#suma_random'
  post '/calculo', to: 'pablito#sumar'

  # post '/guardar_formulario', to: 'controller#action'
  # delete '/borrar_usuario/:id', to: 'controller#action'
  # patch '/borrar_usuario/:id', to: 'controller#action'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
