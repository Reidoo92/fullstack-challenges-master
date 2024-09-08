def sum_odd_indexed(array)
  # TODO: computes the sum of elements at odd indexes (1, 3, 5, 7, etc.)
  #       You should use Enumerable#each_with_index
  sum = 0
  array.each_with_index { |element, index| sum += element if index.odd? }
  p sum
end

def even_numbers(array)
  # TODO: Return the even numbers from a list of integers.
  #       You should use Enumerable#select
  even_array = []
  array.select { |element| even_array << element if element.even? }
  p even_array
end

def short_words(array, max_length)
  # TODO: Take an array of words, return the array of words not exceeding max_length characters
  #       You should use Enumerable#reject
  new_array = []
  array.reject { |element| new_array << element if element.size <= max_length }
  p new_array
end

def first_under(array, limit)
  # TODO: Return the first number from an array that is less than limit.
  #       You should use Enumerable#find

  first_number = 0
  array.find { |element| first_number = element if element < limit }
  p first_number
end

def add_bang(array)
  # TODO: Take an array of strings and return a new array with "!" appended to each string.
  #       You should use Enumerable#map
  new_array = array.map { |element| "#{element}!" }
  p new_array
end

def concatenate(array)
  # TODO: Concatenate all strings given in the array.
  #       You should use Enumerable#reduce
  sentence = array.reduce("") { |accumulator, word| accumulator + word }
  p sentence
end

def sorted_pairs(array)
  # TODO: Reorganize an array into slices of 2 elements, and sort each slice alphabetically.
  #       You should use Enumerable#each_slice
  sorted_array = []
  array.each_slice(2) { |slice| sorted_array << slice.sort }
  p sorted_array
end
