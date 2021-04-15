class PigLatinizer


    def piglatinize(thing)
        pig(thing)
    end
        
    def to_pig_latin(string)
        pig(string)
    end
        
    def pig(thing)
        alpha = ('a'..'z').to_a + ('A'..'Z').to_a
        vowels = %w[a e i o u] + %w[A E I O U]
        consonants = alpha - vowels
        
        words = []
        input = thing.split(' ') 
            input.each do |word|
                if word.length < 2
                    words << word + "way" 
                elsif vowels.include?(word[0])
                    words <<  word + "way"
                elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
                    words <<  word[3..-1] + word[0..2] + 'ay'
                elsif consonants.include?(word[0]) && consonants.include?(word[1])
                    words <<  word[2..-1] + word[0..1] + 'ay'
                elsif consonants.include?(word[0])
                    words <<  word[1..-1] + word[0] + 'ay'
                else 
                    words <<  word + '?'
                end
            end 
        words.join(', ').gsub(/,/, '')
    end
end 