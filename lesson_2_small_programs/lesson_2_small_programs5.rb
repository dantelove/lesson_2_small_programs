# lesson_2_small_programs5.rb

# mortgage calculator

def valid_integer?(num)
  num.to_i.to_s = num
end

loop do 

  puts "Enter Loan Amount:"
  l = gets.chomp.to_f

  puts "Enter Annual Percentage Rate (APR):"
  apr = gets.chomp.to_f
  c = (apr / 100) / 12

  puts "Enter the Loan Duration in Years:"
  loan_duration = gets.chomp.to_f
  n = loan_duration * 12

  result = l*(c*(1 + c)**n)/((1 + c)**n - 1)

  puts "Your monthly payment would be about #{result.round(2)}"

  puts "Would you like to calculate another loan?"
  puts "Type 'YES' to start over."
  input = gets.chomp
  break unless input.downcase == "yes" 

end

puts "Thank you. Goodbye!"