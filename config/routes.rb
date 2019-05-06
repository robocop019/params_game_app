Rails.application.routes.draw do
  namespace :api do
    get '/guessing_game' => 'params#guessing_game'
    get '/guessing_game/:name/:guess' => 'params#url_segment_action'
    post '/form_guessing_game' => 'params#form_guessing_action'
  end
end
