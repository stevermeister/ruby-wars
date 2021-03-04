def get_sum(a,b)
    if a < b  
        return (a..b).reduce(0, :+) 
    else
        return (b..a).reduce(0, :+) 
    end
end