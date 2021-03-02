def duplicate_count(text)
    
    text_letters = text.downcase.split("")
    letters = []
    dublicates = []
    
    for letter in text_letters do
        if letters.include?(letter) && !dublicates.include?(letter)
            dublicates.append(letter)
        else
            letters.append(letter)
        end 
    end
    
    return dublicates.length()
end