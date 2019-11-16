# require modules here
require 'yaml'
require 'pry'

def load_library(file)
  
  emo_meanings = YAML.load_file(file)
  
  emoticons_hash = {
    :get_meaning => {},
    :get_emoticon => {}
  }
  
  # emo_meanings.each do |meanings, emoarray|
  #   emoarray.each do |emoticons|
  #     emoticons_hash[:get_meaning][emoarray[1].to_sym] = meanings
  #     emoticons_hash[:get_emoticon][emoarray[0].to_sym] = emoarray[1]
  #   end
  # end
 
 
  # returns two keys, 'get_meaning' and 'get_emoticon'
  # each of the above keys point to inner hashes
  # 'get_meaning' value = Japanese emoticons, which points to their meanings
  # 'get_emoticon' value = English emoticons, which points to Japanese equivalent
  
  emoticons_hash
  binding.pry
end

def get_japanese_emoticon(file, emoticon)
  # calls on load_library(file)
  # returns Japanese equivalent of English emoticon
  # returns an apology message if argument is not a known emoticon 
end

def get_english_meaning(file, emoticon)
  # calls on load_library(file)
  # returns english meaning of Japanese emoticon
  # returns an apology message if argument is not a known emoticon
end