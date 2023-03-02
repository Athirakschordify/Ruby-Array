# frozen_string_literal: true

puts 'Enter size of the array'
n = gets.chomp.to_i
array = []
puts 'Enter array elements'
(1..n).each do |_i|
  num = gets.chomp
  array.push(num)
end
puts "array is #{array}"

new_array1 = array.reject do |item|
  item.length < 4
end
new_array2 = new_array1.reject do |item|
  item.length >= 9
end

puts new_array2
