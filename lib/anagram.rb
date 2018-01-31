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
      #if the item contains all the same letters that @word does
      #then push the item to an array of matches
      if i.all?{|item| match_word_array.include?(item)} == true 
        matches << i
      end
    }
    return matches
    #if array = [] after the loop then return false 
    #else return matches array
  end
  
end