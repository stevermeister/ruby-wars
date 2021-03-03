def find_outlier(integers)
    is_parity1 = integers[0] % 2 == 0
    is_parity2 = integers[1] % 2 == 0
    is_parity3 = integers[2] % 2 == 0
    if is_parity1 != is_parity2
        if is_parity1 != is_parity3
            return integers[0]
        else
            return integers[1]
        end    
    else
        integers.each do |n|
            if is_parity1 != (n % 2 == 0)
                return n
            end
        end
    end
end