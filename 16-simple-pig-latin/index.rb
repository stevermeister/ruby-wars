def pig_it text
    words = text.split(' ')
    words = words.map { |word| (word == '!' or word == '?') ? word : word[1..-1] + word[0] + "ay" }
    return words.join(' ')
end

puts pig_it "Oay emporatay oay oresmay !"