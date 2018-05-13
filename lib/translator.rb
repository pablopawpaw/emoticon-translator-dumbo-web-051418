# require modules here
require 'yaml'

def load_library(yml)
  # code goes here
  emoticons = YAML.load_file("lib/emoticons.yml")
  puts emoticons
  
  emoticons.each do |element|
    element.each do |key, details|
      details.each do |eng, jap|
        
      end 
    end 
  end 
  
  emoticons
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end