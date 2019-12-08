$words_to_ignore = ["a", "an", "of", "the", "and", "but", "or", "for", "nor", "on", "in", "at", "to", "from", "by", "over"]

class Book
  def title
    @title
  end

  def title=(str)
    @title = titleize(str)
  end

  def helper(input)
    input = input.downcase
    if $words_to_ignore.include? input
      return input
    else
      return input.capitalize
    end
  end

  def titleize(input)
    result = input.split.map { |ele| helper ele }.join(" ")
    result[0] = result[0].capitalize
    result
  end
end
