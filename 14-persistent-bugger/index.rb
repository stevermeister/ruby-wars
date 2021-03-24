def persistence(n)
    count = 0
    while n > 9 
        n = n.to_s.split('').reduce(1) { |mult, str| mult * str.to_i }
        count += 1
    end

    return count
end