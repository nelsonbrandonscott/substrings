def substrings(string, dictionary)
  words = string.downcase.split(" ")
  result = Hash.new(0)

  words.each do |word|
    dictionary.flatten.map do |dictionary_word| 
      if word.include?(dictionary_word)
        result[dictionary_word] += 1
      end
    end
  end

  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)