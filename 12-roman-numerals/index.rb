def solution(roman)
    values = {
        "I"   =>       1,
        "V"   =>       5,
        "X"   =>      10,
        "L"   =>      50,
        "C"   =>     100,
        "D"   =>     500,
        "M"   =>   1000
    }
    number = 0    
    symbols = roman.split('')
    i = 0
    while i < symbols.length - 1
        current_value  = values[symbols[i]]
        next_value  = values[symbols[i+1]]
        if current_value < next_value 
            number -= current_value
        else
            number += current_value
        end
        i += 1
    end
    current_value  = values[symbols[i]]
    number += current_value
    
    return number
end