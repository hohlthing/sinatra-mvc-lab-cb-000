# Your TextAnalyzer model code will go here.
class PigLatinizer
  attr_reader :text

  # def initialize(phrase)
  #   @text = phrase.downcase
  # end

  def piglagtinize_word(word)
    return word +"way" if word.size <= 2
    match = word.match(/^((?:qu|[bcdfghjklmnpqrstvwxz])*)(.*)$/)
    match ? match[2] + match[1] + "ay" : word + "ay"
  end

  def piglatinize(phrase)
    words = phrase.split(" ")
    words.map { |word| piglagtinize_word(word) }.join(" ")
  end
end
