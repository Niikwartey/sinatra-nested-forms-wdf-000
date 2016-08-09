require './environment'
require_relative 'app/models/pirate'
require_relative 'app/models/ship'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :"pirates/new"
    end

    post '/pirates' do
      @pirate = Pirate.new(
        params["pirate"]["name"],
        params["pirate"]["height"],
        params["pirate"]["weight"]
      )

      params["pirate"]["ships"].each do |ship_data|
        Ship.new(ship_data["name"], ship_data["type"], ship_data["booty"])
      end

      @pirate_ships = Ship.all

      erb :"pirates/show"
    end

  end
end
 