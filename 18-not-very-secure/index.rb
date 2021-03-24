def alphanumeric?(string)
    if string.length == 0
      return false
    end
    string.match /(\S\d)+/
end