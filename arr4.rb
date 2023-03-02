# frozen_string_literal: true

puts 'Enter size of the array'
n = gets.chomp.to_i
array = []
puts 'Enter array elements'
(1..n).each do |_i|
  num = gets.chomp.to_i
  array.push(num)
end
puts "array is #{array}"

puts "reversed array : #{array.reverse}"
