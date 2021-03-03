def digital_root(n)
    if n.to_s.length > 1
        return digital_root(n.to_s.split("").map { |s| s.to_i }.sum())
    end

    return n
end