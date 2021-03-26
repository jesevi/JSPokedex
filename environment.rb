require 'bundler/setup'

Bundler.require(:default)

require_relative '../lib/cli'
require_relative '../lib/pokedex_api'
require_relative './seeds.rb'
