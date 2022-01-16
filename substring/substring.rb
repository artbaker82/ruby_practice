# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = {}
  dictionary.each do |substr|
    string_lower = string.downcase
    substr_lower = substr.downcase 
    if string_lower.include?(substr_lower)
  
      offset = 0
      until string_lower.index(substr_lower, offset) == nil do
        result.include?(substr_lower) ? result[substr_lower] += 1 : result[substr_lower] = 1
        offset = string_lower.index(substr_lower, offset) + 1
      end
    end
  end
  result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)


