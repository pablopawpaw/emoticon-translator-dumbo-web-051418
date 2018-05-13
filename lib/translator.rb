# require modules here
require 'yaml'

def load_library(yml)
  # code goes here
  emoticons = YAML.load_file("lib/emoticons.yml")

  def setup_hash(hash)
    new_hash = {}
    new_hash["get_meaning"] = {}
    new_hash["get_emoticon"] = {}
    #get_meaning
    hash.each do|key, array|
      new_hash["get_meaning"][array[1]] = key
    end
    #get_emoticon
    hash.each do|key, array|
      new_hash["get_emoticon"][array[0]] = array[1]
    end 
    new_hash
  end 
  
  new_hash = setup_hash(emoticons)
  new_hash

end

def get_japanese_emoticon(yaml, emoticon)
  # code goes here
  hash = load_library(yaml)
  if hash["get_emoticon"].include?(emoticon)
    hash["get_emoticon"][emoticon]
  else 
    "Sorry, that emoticon was not found"
  end 
end

def get_english_meaning(yaml, emoticon)
  # code goes here
  hash = load_library(yaml)
  
end