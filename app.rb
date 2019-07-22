require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
    pl = PigLatinizer.new
    @string = pl.piglatinize(params[:user_phrase])  
    
    erb :pig_latin
    end
end