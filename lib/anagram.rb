# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(possibilities)
    word = self.word
    split_word = word.split.sort
    solution = []
    possibilities.find_all do |possibility|
      split_possibility = possibility.split.sort
      solution << possibility if split_possibility == split_word 
    end
    
  end
end
