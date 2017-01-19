# GETS ============================================

get '/signin' do  
	erb :signin
end
 
get '/logout' do
  #¿Qué va en esta parte para cerrar la sesión?
	session.clear
  redirect '/'
end

# POSTS ============================================

post '/signin' do
  #¿Qué va en esta parte para ingresar al juego?
  @errors = ''
  password = params[:password]
  if does_user_exist?(params[:email]) == false
    @errors = 'Sorry... but that username does not exist.'
    return erb :signin
  else 
    # Encuentra al usuario
    user = User.find_by(email: params[:email])
    #Valida al ususario
    valid_user = User.authenticate(user.email,password)
    if valid_user
      @message = 'You have been logged in successfully'
      #Genera la sesion del usuario
      session[:user_id] = user.id
      redirect "/secret"
    else
      @errors = 'Sorry but your password does not match.'
      return erb :signin
    end
  end
end
