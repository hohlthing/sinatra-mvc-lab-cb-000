# Your TextAnalyzer model code will go here.
class PigLatinizer

  def piglagtinize_word(word)
    if word[0] =~ /[aAeEiIoOuU]/
      word + "way"
    else
      match = word.match(/^((?:qu|[bcdfgjklmnpqrstvwxz])*)(.*)$/)
      match ? match[2] + match[1] + "ay" : word
    end
  end

  def piglatinize(phrase)
    words = phrase.split(" ")
    words.map { |word| piglagtinize_word(word) }.join(" ")
  end
end
