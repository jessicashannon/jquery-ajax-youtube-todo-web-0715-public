require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :"index"
  end

  get "/widget" do
    # binding.pry
    YouTube.run(params[:search_keyword])
  end
end
