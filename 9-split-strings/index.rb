def solution(str)
    if str.length % 2 == 1
        str += '_'
    end 
    return str.scan(/../)
end