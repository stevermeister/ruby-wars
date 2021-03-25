require 'bigdecimal'

def fibo(n)

  nega = false
  if n < 0 
    n = n.abs
    nega = true
  end


  return 0 if n == 0
  return 1 if n == 1


  i = 2
  fibs = [0, 1]

  while i < n + 1
    newfib = fibs[1] + fibs[0]
    fibs[0] = fibs[1]
    fibs[1] = newfib
    i += 1
  end

  sign = 1
  if nega
    sign = -1 if (n + 1) % 2 == 1
  end
  fibs.last * sign
end




def fib(n)
  # Fn = (  [(√5 + 1)/2] ^ n    ) / √5
  phi = (1 + Math::sqrt(5)) / 2
  phi = BigDecimal('1.618033988749895')
  return ((phi ** n) / Math::sqrt(5))
  
end

puts fib(50000)