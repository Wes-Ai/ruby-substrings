def substrings(word, dictionary)
    word_count = Hash.new(0)
    word_array = word.downcase.split()
    word_array.each do |split_word|
        dictionary.each{ |dict_word| word_count[dict_word] += 1 if split_word.include?(dict_word) }
    end
    word_count.sort.to_h
end



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)