# frozen_string_literal: true

# Given an array a = ['cat', 2, 'dog', 'tiger', 4, 9, 'lion', 10].
# Fetch all integer elements from the above array.
# Find the index of all string elements from the array.push.
# Total count of elements from the array .
# Check if 'leopard' is present in the array
# Return all elements having vowels
# Compute the sum of all integer elements in the array and push the sum to the array.
# Fetch the last 3 elements from the array.
# Replace all vowels in the array with '$' symbol.
# Check whether first and last element are the same.
# Reverse the array
# Delete element @ index 2

a = ['cat', 2, 'dog', 'tiger', 4, 9, 'lion', 10]
str_index = []
string = []
numbers = []
sum = 0
new_array = []
list = []
vowels = %w[a e i o u]
replace = []

a.each_with_index do |a, index|
  if a.to_i.positive?
    numbers.push(a)
    sum += a
  else
    string.push(a)
    str_index.push(index)
  end
end
# Fetch all integer elements from the above array.
puts "integer array  is #{numbers}"

# Find the index of all string elements from the array.push.
puts "string  is #{string}"
puts "string index is #{str_index}"

# Total count of elements from the array
count = a.count
puts "total count of the array is #{count}"

# Check if 'leopard' is present in the array

if a.include?('leopard')
  puts 'Found'
else
  puts 'Not found'
end

# Compute the sum of all integer elements in the array and push the sum to the array.

puts "sum = #{sum}"

# Fetch the last 3 elements from the array.

last_three = a.last(3)
puts "last 3 elements are #{last_three}"
first = a.shift
last = a.pop

# Check whether first and last element are the same.

if first == last
  puts 'first and last same'
else
  puts 'first and last are different'
end

# Reverse the array

puts "reverse of the array #{a.reverse}"
puts "Original array is #{a}"

# Delete element @ index

a.delete_at(2)
puts "Delete element @ index 2  #{a}"

# Return all elements having vowels

string.each do |s|
  new_array = s.split('')
  new_array.map do |l|
    vowels.map do |v1|
      if v1 == l
        list.push(s)
        list &= list
      end
    end
  end
end

# Replace all vowels in the array with '$' symbol.

puts "vowels list #{list}"
string.each do |s|
  r = s.tr('aeiouAEIOU', '$')
  replace.push(r)
end
puts "replace vowels with $ is #{replace}"
