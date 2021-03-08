def rgb(r, g, b)
    r = check_0_to_255(r)
    g = check_0_to_255(g)
    b = check_0_to_255(b)
    return "%02X%02X%02X" % [r, g, b]
end

def check_0_to_255(number)
    if number < 0
        return 0
    end

    if number > 255
        return 255
    end

    return number
end