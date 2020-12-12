require 'pry' 
require "net/http"
require "open-uri"
require "json"
require 'colorator'
require_relative "./cocktail4u/version"
require_relative "./api"
require_relative "./cli"
require_relative "./cocktail"
require_relative "./ingredient"




module Cocktail4u
  class Error < StandardError; end
end
