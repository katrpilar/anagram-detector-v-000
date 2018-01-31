# Your code goes here!
class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(maybe_anagram_array)
    matches = []
    match_word_array = word.split("")
    maybe_anagram_array.map!{|i| i.split("")
      maybe_anagram_array.all?{|item| 
        if match_word_array.include?(item)
          matches << i
        end
      }
       
      end
    }
      #if the item contains all the same letters that @word does
      #then push the item to an array of matches
    
    return matches
    #if array = [] after the loop then return false 
    #else return matches array
  end
  
end