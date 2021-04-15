require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 
        new_word = PigLatinizer.new
        @string = new_word.pig(params[:user_phrase])  
        erb :pig_latin
    end
end