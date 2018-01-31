# Your code goes here!
class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(maybe_anagram_array)
    matches = []
    match_word_array = word.split("")
    maybe_anagram_array.map!{|i|   i.split("")}
    if 
      maybe_anagram_array.each{|loc| 
        if loc.all?{|item| loc.include?(item)}
          matches << loc 
        end
      }
      #if the item contains all the same letters that @word does
      #then push the item to an array of matches
    
    return matches
    #if array = [] after the loop then return false 
    #else return matches array
  end
  
end