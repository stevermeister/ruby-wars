def binary_array_to_number(arr)
    total = 0
    arr.reverse.each_with_index { |v, i| total += v * 2 ** i }
    return total
end