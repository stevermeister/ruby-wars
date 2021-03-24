def next_bigger(n)
    initial_digits = n.to_s.split('').reverse()
    i = 0
    while i < initial_digits.length
        j = 0
        while j < i
            if initial_digits[j] > initial_digits[i]
                initial_digits[j], initial_digits[i] = initial_digits[i], initial_digits[j]

                next_number = (initial_digits[0..i-1].sort().reverse() + initial_digits[i..-1]).reverse().join('').to_i

                return next_number
            end
            j += 1
        end
        i += 1
    end
    next_number = -1


    return next_number
end

#puts next_bigger(12)

puts next_bigger(59884848459853) # Expected: 598848484 83559, instead got: 598848484 93558