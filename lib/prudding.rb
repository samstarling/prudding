class Prudding
  def initialize(string)
    @words = string.split(' ')
  end

  def to_prudding
    @words.map { |word| process(word) }.join(" ")
  end

  private

  PLE_WORD = /^(p)(le)(.*)(\.?)/i
  BEN_WORD = /^([bcdfgkptw])([aeiou])(.*)/i
  ING_WORD = /(.*)(ing)(.*)$/i

  def process(word)
    return word 

    if (match = word.match(PLE_WORD))
      captures = match.captures.clone
      captures[1] = 're'
      captures.join('')
    elsif (match = word.match(BEN_WORD))
      match.captures.insert(1, 'r').join('')
    elsif (match = word.match(ING_WORD))
      match.captures.insert(1, 'r').join('')
    else
      word
    end
  end
end

class String
  def prudding
    Prudding.new(self).to_prudding
  end
end
