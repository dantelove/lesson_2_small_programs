#lesson_2_small_programs1.rb

#calculator

#this is my attempt before watching the walkthrough

while true

puts "First Number?"

f_number = gets.chomp.to_f

puts "Second Number?"

s_number = gets.chomp.to_f

puts "Type 'A' to Add"
puts "Type 'S' to Subtract"
puts "Type 'M' to Multiply"
puts "Type 'D' to Divide"
puts "Type 'E' to exit"

input = gets.chomp

input.upcase!

  case
    when input == "A" then puts f_number + s_number
    when input == "S" then puts f_number - s_number
    when input == "M" then puts f_number * s_number
    when input == "D" then puts f_number / s_number
    when input == "E" then break
    else puts "Please enter A, S, M, D, or E."
  end

  puts

end
