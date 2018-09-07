module Luhn
  def self.is_valid?(number)
    digits = number.to_s.chars.map(&:to_i)

    x = digits.length - 2
    while x >= 0
      digits[x] *= 2
      if digits[x] >= 10
        digits[x] -= 9
      end
      x -= 2
    end

    total = digits.inject(0){|sum, x| sum + x }
    
    if total % 10 === 0 
      return true
    else
      return false
    end
  end
end