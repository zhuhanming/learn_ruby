#write your code here
def translate input
  vowels = ['a', 'e', 'i', 'o', 'u']
  punctuation = ["!", "?", ".", ",", ";", ":"]
  caps = []
  words = input.split
  words.each do |ele|
    caps << (ele==ele.capitalize)
  end
  (0..words.length-1).each do |i|
    ele = words[i].downcase
    punc = ""
    if punctuation.include? ele[-1]
      punc = ele[-1] 
      ele = ele[0..-2]
    end
    if vowels.include? ele[0]
      words[i] = ele + "ay"
      if caps[i]
        words[i] = words[i].capitalize
      end
      words[i] = words[i] + punc
    else
      x = 0
      while not vowels.include? ele[x] and x < ele.length
        if ele[x] == 'q'
          if ele[x+1] == 'u'
            x += 2
          else
            x += 1
          end
        else
          x += 1
        end
      end
      ele = ele[x..] + ele[0..x-1]
      words[i] = ele + "ay"
      if caps[i]
        words[i] = words[i].capitalize
      end
      words[i] = words[i] + punc
    end
  end
  words.join(' ')
end