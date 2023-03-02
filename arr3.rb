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

new_array = array.select do |item|
  item.include?('a')
end

puts new_array
