require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
   @analyzed_text.text = TextAnalyzer.new(params[:user_text])
   erb :results
   binding.pry
  end
end
