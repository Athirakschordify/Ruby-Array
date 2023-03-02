# frozen_string_literal: true

puts 'enter size'
n = gets.chomp.to_i
array = []
puts 'Enter array elements'
(1..n).each do |_i|
  num = gets.chomp.to_i
  array.push(num)
end
puts "array is #{array}"
sum = 0
array.each do |i|
  i.even? ? sum += i : ''
end
puts "sum= #{sum}"
