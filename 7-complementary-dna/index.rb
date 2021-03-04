def DNA_strand(dna)
    coml= {
        'A' => 'T',
        'T' => 'A',
        'C' => 'G',
        'G' => 'C'
    }
    return dna.split("").map { |x| coml[x]}.join("")
end