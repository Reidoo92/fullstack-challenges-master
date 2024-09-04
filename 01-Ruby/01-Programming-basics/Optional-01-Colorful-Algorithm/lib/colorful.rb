def colorful?(number)
  # TODO: return true if the number is colorful, false otherwise

  same_number = number.to_s.chars.map(&:to_i)
  same = 0
  same_number.each_with_index do |num, index|
    same_number.each_with_index do |other_num, other_index|
      same += 1 if index != other_index && num == other_num
    end
  end
  if (number % 2 == 0 && !number.zero?) || same.positive?
    return false
  else
    return true
  end
end
