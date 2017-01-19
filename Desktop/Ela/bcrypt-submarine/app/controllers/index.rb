before '/secret' do 
  #¿Qué va en esta parte para aplicar el filtro que da entrada al juego?
	
end 

get '/' do
  @message = ''
  erb :index
end



get '/secret' do
  erb :secret
end

