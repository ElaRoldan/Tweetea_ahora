# GETS ============================================

get '/signup' do
	erb :signup
end


# POSTS ============================================

post '/signup' do
  #¿Qué va en esta parte para registrar al jugador?
	@message = ''
  
  #Valida si el usuario no se ha registrado antes
  if does_user_exist?(params[:email]) == true
    @message = 'Username already exists'
    return erb :index
  end
  newbie = User.create(name: params[:user_name], email: params[:email], password:  params[:password])
  @message = 'You have sucessfully registered!'
  erb :index
end


# METHODS ==========================================
 # Verifica si el usuario existe
  def does_user_exist?(email)
    user = User.find_by(email: email)
    if user
      return true
    else
      return false
    end
end  


