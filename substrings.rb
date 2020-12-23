def substrings(string, dictionary_array)
    p formatted_string = string.downcase.chars.select { |char| ("a".."z").include?(char)}.join()
    result = {}
    dictionary_array.each do |word|
        if formatted_string.include?(word)
            result[word] = formatted_string.count(word)
        else
            nil
        end
    end

    p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }
substrings("Howdy partner, sit down! How's it going?", dictionary)
#   => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, 
# "partner" => 1, "sit" => 1 }