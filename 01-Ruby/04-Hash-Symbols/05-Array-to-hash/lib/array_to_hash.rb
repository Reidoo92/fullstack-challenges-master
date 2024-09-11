def array_to_hash(array)
  # TODO: implement the method :)
  # index = -1
  # array.to_h { |element| [(index += 1).to_s, element] }
  hash = {}

  array.each_with_index { |value, index| block_given? ? hash["key#{index}"] = value : hash[index.to_s] = value }
  return hash
end
