#write your code here
def add num_1, num_2
  num_1 + num_2
end

def subtract num_1, num_2
  num_1 - num_2
end

def sum arr
  result = 0
  arr.each do |ele|
    result += ele
  end
  result
end

def multiply *args
  if args == []
    return 0
  end
  result = 1
  args.each do |ele|
    result *= ele
  end
  result
end

def power num_1, num_2
  num_1 ** num_2
end

def factorial num
  if num == 0
    return 1
  else
    return num * factorial(num-1)
  end
end