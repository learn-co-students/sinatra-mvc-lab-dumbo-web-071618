require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    new_pl = PigLatinizer.new
      @new_word = new_pl.piglatinize(params[:user_phrase])

      erb :result
  end

end
