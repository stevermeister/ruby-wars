def alphabet_position(text)
    alphabet = ['±'] + 'a'.upto('z').to_a
    output = ''
    text = text.downcase.split('')
    text = text.select {|v| alphabet.include?(v)}
    return text.map { |letter| alphabet.index(letter) }.join(' ')
end