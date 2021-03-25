def hamming(n)
  next_ham = 1
  queues = [[ 2, []], [3, []], [5, []] ]
  i = 0 
  loop do
    i += 1
    if i == n
      return next_ham
    end
 
    queues.each do |m,queue| 
      queue << next_ham * m
    end  
    
    next_ham = queues.map{|m,queue| queue.first}.min

    queues.each do |m,queue| 
      if queue.first==next_ham
        queue.shift 
      end
    end 

  end
end








# def hamming(n)
#   result = [1]
#   i = j = k = 0
#   while result.size < n
#     result << [result[i]*2,result[j]*3,result[k]*5].min
#     i += 1 if result.last == result[i] * 2
#     j += 1 if result.last == result[j] * 3
#     k += 1 if result.last == result[k] * 5
#   end
#   result.last
# end