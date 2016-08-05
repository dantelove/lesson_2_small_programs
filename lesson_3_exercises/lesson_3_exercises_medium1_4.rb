# lesson_3_exercises_medium1_4.rb

numbers = [1,2,3,4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

=begin
prints 
1
2
=> [3,4]
=end

numbers = [1,2,3,4]
numbers.each do |number|
  p numbers.pop(1)
end

=begin
prints
[4]
[3]
=> [1,2]
=end

