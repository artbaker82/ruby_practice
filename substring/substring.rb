# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

# > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#   > substrings("below", dictionary)
#   => { "below" => 1, "low" => 1 }

# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>2, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}


# 1. for each dictionarry element, does original string include the substring
# 2. if it does, add the element to the return hash
# 3. if the return hash already includes the key, increment the value by 1

# 4. be sure to account for multiple occurances of the same substring
# 5. use a while loop, includes?, and index

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  #does string include dictionary[idx]?
  # if yes, while string.index(dicionary[idx] !== nil) add dictionary[idx] to return hash or increment its value
  # else go to next dictionary item
  result = {}
  dictionary.each do |substr|
    string_lower = string.downcase
    substr_lower = substr.downcase 
    if string_lower.include?(substr_lower)
      #enter while loop
      # result[substr_lower] = 1
      offset = 0
      until string_lower.index(substr_lower, offset) == nil do
        puts substr_lower
        puts string_lower.index(substr_lower, offset)
        result.include?(substr_lower) ? result[substr_lower] += 1 : result[substr_lower] = 1
        offset = string_lower.index(substr_lower, offset) + 1
        puts offset
      end
    end
  end
  result
end

print substrings("Howdy partner, sit down! How's it going?", dictionary)


