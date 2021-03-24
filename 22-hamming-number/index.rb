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