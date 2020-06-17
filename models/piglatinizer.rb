class PigLatinizer

  def initialize
  end

  def piglatinize(text)
      combine = []
      text_array = text.split(" ")
      text_array.each do |word|
          word_array = word.split("")
          if ["A", "E", "I", "O", "U"].include?(word_array.first)
              "#{word}way"
              combine << word_array.join()
          else
              consonants = []
              consonants << word[0]
                if !["a", "e", "i", "o", "u"].include?(word[1])
                  consonants << word[1]
                if !["a", "e", "i", "o", "u"].include?(word[1])
                  consonants << word[2]
                end
          end
      end
      combine.join(" ")
  end
end
