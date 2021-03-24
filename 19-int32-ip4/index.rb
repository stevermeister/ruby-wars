def int32_to_ip(int32)
    f2 = int32.to_s(2).rjust(32, '0')
    return [
        f2[0..7].to_i(2), 
        f2[8..15].to_i(2), 
        f2[16..23].to_i(2), 
        f2[24..31].to_i(2)
    ]
        .join('.')
end


# puts int32_to_ip(2154959208) #, "128.114.17.104") 
# puts int32_to_ip(0) #, "0.0.0.0")
# puts int32_to_ip(2149583361) #, "128.32.10.1")