def find_next_square(sq)
    root = Math.sqrt(sq)
    if root.to_i == root
        return (root+1)**2
    else
        return -1
    end
end