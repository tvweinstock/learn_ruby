def add(num1, num2)
  num1 + num2
end

def subtract(num2, num1)
  num2 - num1 
end

def sum(array)
  return 0 if array.empty?
  array.inject(:+)  
end

def multiply(array)
  array.inject(1, :*)  
end


def factorial(num)
  return 1 if num == 0
  (1..num).inject(:*)
end
