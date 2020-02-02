require 'pry'

def alphabetize(array)
  alphabet = 'abcĉdefgĝhĥijĵklmnoprsŝtuŭvz'
  
  #found online, modified to use "chars" instead of split('') because i think it reads clearer
  #starts sort
  array.sort_by do |phrase|
    #split phrase into array of characters, then starts map
    phrase.chars.map do |letter|
      #each letter in array is substituted for the index of the letter, using the provided alphabet
      alphabet.index(letter)
    end
    #the returned arrays of numbers are used to sort the original phrase
  end
end