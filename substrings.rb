def substrings(string, dictionary)
  words = string.downcase.split(" ")
  result = Hash.new(0)
  dictionary.map! { |word| word.downcase }
  words.each do |word|
    dictionary.map do |dictionary_word| 
      if word.include?(dictionary_word)
        result[dictionary_word] += 1
      end
    end
  end

  result
end

dictionary = ["below", "Down", "go", "Going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)