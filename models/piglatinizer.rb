class PigLatinizer
    def initialize

    end

    def piglatinize(word)
        word.split(" ").map do |w|
            if w[0] =~ /[aeiouAEIOU]/
                w + "way"
            else
                sliced = w.slice!(/[^aeiouAEIOU]+/)
                w + sliced + "ay"
            end
        end.join(" ")
    end

end