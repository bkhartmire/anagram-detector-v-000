# Your code goes here!
class Anagram
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def match(possibilities)
    split_word = self.word.split("").sort
    possibilities.find_all do |possibility|
      split_possibility = possibility.split("").sort
      split_possibility == split_word
    end
  end
end
