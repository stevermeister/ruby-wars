def wave(str)
    output = []
    i = 0
    while i < str.split('').length
        if str[i] != ' '
            str = str.downcase
            str[i] = str[i].upcase
            output.append(str)
        end
        i += 1
    end

    return output
end