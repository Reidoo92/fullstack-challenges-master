def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise

  if (number % 2 == 0 && !number.zero?) || same_number(number)
    return false
  else
    return true
  end
end

def same_number(number)
  same_number = number.to_s.chars.map(&:to_i)
  same = 0
  same_number.each_with_index do |num, index|
    same_number.each_with_index do |other_num, other_index|
      same += 1 if index != other_index && num == other_num
    end
  end

  return true if same.positive?
end
