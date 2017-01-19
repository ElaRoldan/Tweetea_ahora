get '/score/:user_id' do
  #¿Qué va en esta parte para obtener la puntuación de cada jugador (submarinos destruidos en cada ronda) y
  #número de juegos ganados?
  
end

post '/games' do
  #¿Qué va en esta parte para recibir la información del round actual, el score del jugador, el conteo de las
  #oportunidades de cada jugador, así como la sesión actual?
    tries = params[:tries]
    destroyed_submarines = params[:sub_destroyed]
   
    if tries  == "4" || destroyed_submarines == "2"
      Game.create(user_id: current_user.id, score: destroyed_submarines)
    end  

    p "=" * 100
    p current_user 
    p params
  #¿Qué va en esta parte para llevar el registro de las puntuaciones por ronda?
  
end

post '/new_game' do
  #¿Qué va en esta parte para redirigir a secret?
  if logged_in?
    redirect to "/secret"
  end
end
