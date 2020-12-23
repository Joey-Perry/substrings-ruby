def substrings(string, dictionary_array)
    result = {}
    formatted_string = string.downcase
    dictionary_array.each do |word|
        if formatted_string.include?(word)
            result[word] = formatted_string.scan(word).length
        else
            nil
        end
    end

    p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Test case # 1
# substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

# Test case # 2
#substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, 
# "partner" => 1, "sit" => 1 }