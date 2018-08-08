
class PigLatinizer

  def piglatinize(words)
    new_words = []
    words.split(' ').map do |word|
      if word[0].match(/[aeiouAEIOU]/)
        word + "way"
      else
        first_vowel_index = word.downcase.index(word[/[aeiouAEIOU]/])
        word.slice(first_vowel_index..-1) +word.slice(0, first_vowel_index) + 'ay'
      end
    end.join(' ')
  end

end
