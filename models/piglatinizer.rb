class PigLatinizer
  @@vowels = ["a","e","i","o","u"]

  def piglatinize(words)
  new_string = words.split(" ").map do |word|
    if @@vowels.include?(word[0].downcase)
      word+"way"
    else
      change(word)+"ay"
    end
  end.join(" ")
  new_string
  end

  def change(string)
    while !(@@vowels.include?(string[0]))
      first_letter = string[0]
      string =string.reverse.chop.reverse
      string = string+first_letter
      change(string)
    end
   string
  end

end
