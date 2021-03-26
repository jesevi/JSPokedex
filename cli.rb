require_relative '../config/environment.rb'
require 'pry'

$current_user = nil


def get_or_create_user
    $current_user = nil
    prompt = TTY::Prompt.new
    input = prompt.yes?("Hello Trainer! I am a Pokedex, a digital encyclopedia about Pokemon! are you new here?")
    if input == true
      $current_user = create_user
    else input == false
      $current_user = get_user
    end
  end

  def create_user
    prompt = TTY::Prompt.new
    username = prompt.ask("Fantastic! What is your name?")
    puts "Nice to meet you #{username}!"
    pokemon_to_research
    end
 
  def find_pokemon_by_name
    prompt = TTY::Prompt.new
    name = prompt.ask("Please enter the name of the Pokémon you would like to research:")
    if Pokemon.exists?(name: name.downcase)
     found_pokemon = Pokemon.find_by(name: name.downcase)
    else
      puts "Sorry, that pokemon does not exist"
      find_pokemon_by_name
    end
end

    def find_pokemon_by_pokedex
        prompt = TTY::Prompt.new
        user_pokedex = prompt.ask("Please enter the Pokédex number of the Pokémon you would like to research:")
        if Pokemon.exists?(pokedex_number: user_pokedex)
         found_pokemon = Pokemon.find_by(pokedex_number: user_pokedex)
        else
          puts "Sorry, that pokemon does not exist"
          find_pokemon_by_pokedex
        end
    end


