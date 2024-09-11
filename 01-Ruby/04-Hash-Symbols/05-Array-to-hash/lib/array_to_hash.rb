def array_to_hash(array)
  # TODO: implement the method :)
  hash = {}

  array.each_with_index { |value, index| block_given? ? hash["key#{index}"] = value : hash[index.to_s] = value }
  return hash
end
