def parse_int(string)
    digits = {
      "one" => 1,
      "two" => 2,
      "three" => 3,
      "four" => 4,
      "five" => 5,
      "six" => 6,
      "seven" => 7,
      "eight" => 8,
      "nine" => 9,
      "ten" => 10,
      "eleven" => 11,
      "twelve" => 12,
      "thirteen" => 13,
      "fourteen" => 14,
      "fifteen" => 15,
      "sixteen" => 16,
      "seventeen" => 17,
      "eighteen" => 18,
      "nineteen" => 19,
      "twenty" => 20,
      "thirty" => 30,
      "forty" => 40,
      "fifty" => 50,
      "sixty" => 60,
      "seventy" => 70,
      "eighty" => 80,
      "ninety" => 90,
      "hundred" => 100,
      "thousand" => 1000,
      "million" => 1000000,
    }
    
    
    return 0 if string == "zero"
    output = 0
    string.gsub!(' and ', ' ')
    words = string.split(' ')

    numbers = []
    words.each do |word|
        
        if word.include?'-'
            numbers.push(word.split('-').map {|w| digits[w]}.sum)
        else
            numbers.push(digits[word])
        end
        
    end

    i = 0
    while i < numbers.length
        if numbers[i] == 1000000
            output *= 1000000
            i += 1
            next
        end
        if numbers[i] == 1000
            output *= 1000
            i += 1
            next
        end
        if numbers[i+1] == 100
            output += numbers[i] * 100
            i += 2
        else 
            output += numbers[i]
            i += 1
        end
    end
    
    return output
  end