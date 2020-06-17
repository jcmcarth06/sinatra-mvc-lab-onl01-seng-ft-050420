class PigLatinizer

  def initialize
  end

  def piglatinize(text)
      combine = []
      text_array = text.downcase.split(" ")
      text_array.each do |word|
          word_array = word.split("")
          if ["A", "E", "I", "O", "U"].include?(word_array.first)
              word_array.push("w", "a", "y")
              combine << word_array.join()
          else
              first = word_array.shift()
              word_array.push(first, "a", "y")
              combine << word_array.join()
          end
      end
      combine.join(" ")
  end
end
