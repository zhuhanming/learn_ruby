#write your code here
def echo input
  input
end

def shout input
  input.upcase
end

def repeat input, repetitions = 2
  result = input
  (repetitions - 1).times do
    result += " #{input}"
  end
  result
end

def start_of_word input, val
  input[0..val-1]
end

def first_word input
  input.split[0]
end

$words_to_ignore = ['a', 'an', 'the', 'and', 'but', 'or', 'for', 'nor', 'on', 'at', 'to', 'from', 'by', 'over']

def helper input
  input = input.downcase
  if $words_to_ignore.include? input
    return input
  else
    return input.capitalize
  end
end


def titleize input
  result = input.split.map{|ele| helper ele}.join(' ')
  result[0] = result[0].capitalize
  result
end