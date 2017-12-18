require 'sinatra'

get '/' do
  erb :aplicacion
end

get '/IrAlTablero' do
  erb :IrAlTablero
end