# require 'pry'
# require_relative '../config/environment.rb'
Pokemon.delete_all
User.delete_all
Team.delete_all

def update_pokemons

  pokemon_hash = get_151_pokemon()
  for id in (1..151)
    Pokemon.create(

      name: pokemon_hash[id.to_s][:name],
      pokedex_number: id
    )
    end
end

User.create(name: "Lance")