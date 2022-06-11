def substrings(word, dictionary)
    word_count = Hash.new(0)
    dictionary.each{ |dict_word| word_count[dict_word] += 1 if word.include?(dict_word) }
    word_count
end



dictionary = ["below","down","go","going","horn","below","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)