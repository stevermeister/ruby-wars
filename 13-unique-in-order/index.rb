def unique_in_order(iterable)
    if !iterable.kind_of?(Array)
        iterable = iterable.split('')
    end

    if iterable.length == 0
        return []
    end

    output = [iterable[0]]
    for element in iterable
        if element != output[-1]
            output.append(element)
        end
    end
    return output
end