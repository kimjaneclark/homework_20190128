require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/game')
also_reload('./models/*')

get '/welcome' do
  erb(:welcome)
end

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1],params[:hand2])
  @result = game.play()
  erb(:result)
end
