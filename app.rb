require_relative 'config/environment'
#require_relative 'models/piglatinizer'

class App < Sinatra::Base
  
  get '/' do
    
    erb :user_input
  end 
  
  post '/piglatinize' do
    @piglatin = PigLatinizer.new.piglatinize(params[:user_phrase])
    erb :response 
  end 
  
end