# require 'net/http'
# require 'open-uri'
require 'json'
require 'rest-client'
require 'pry'
require 'tty-prompt'

class GetPokemon

  def get_api()
    # url = "https://pokeapi.co/api/v2/pokemon?limit=151"
    response_string = RestClient.get("https://pokeapi.co/api/v2/pokemon?limit=151")
    response_hash = JSON.parse(response_string)
  end

  def get_151_pokemon()
    pokemon_info = {}
    for id_or_name in (1..151)
      response_string = RestClient.get("https://pokeapi.co/api/v2/pokemon/#{id_or_name}")
      response_hash = JSON.parse(response_string)
    end
end