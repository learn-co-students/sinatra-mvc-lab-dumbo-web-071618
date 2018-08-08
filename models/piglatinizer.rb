class PigLatinizer
    def piglatinize_individual(word)

        part_to_be_moved = ""
        word.each_char do |char|
            "aeiouAEIOU".include?(char) ? break :  part_to_be_moved += char
        end
        part_to_be_moved.empty? ? word + "way" : word[part_to_be_moved.length..-1] + part_to_be_moved + "ay"

    end

    def piglatinize(sentence)
        sentence.split.map {|word| piglatinize_individual(word)}.join(" ")
    end
end