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

new_array = array.sort
new_array.pop
new_array.shift
length = new_array.length
sum = 0
avg = 0
# new_array.each do |item|
# sum=sum+item
# end
new_array.map { |item| sum += item }
avg = sum / length
puts "Average = #{avg}"
