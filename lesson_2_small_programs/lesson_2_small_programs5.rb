# lesson_2_small_programs5.rb

# mortgage calculator

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator.yml')

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  valid_integer?(num) || valid_float?(num)
end

puts MESSAGES['welcome']

loop do # main loop

  l = ''
  loop do
    puts MESSAGES['loan_amount']
    l = gets.chomp

    if valid_number?(l) && l.to_f > 0
      break
    else
      puts MESSAGES['invalid_loan_amount']
    end
  end

  apr = ''
  loop do
    puts MESSAGES['enter_apr']
    apr = gets.chomp

    if valid_number?(apr) && apr.to_f > 0
      break
    else
      puts MESSAGES['invalid_apr']
    end
  end

  c = (apr.to_f / 100) / 12

  loan_duration = ''
  loop do
    puts MESSAGES['loan_duration']
    loan_duration = gets.chomp

    if valid_number?(loan_duration) && loan_duration.to_f > 0
      break
    else
      puts MESSAGES['invalid_loan_duration']
    end
  end

  n = loan_duration.to_f * 12

  result = l.to_f*(c*(1 + c)**n)/((1 + c)**n - 1)

  puts "Your monthly payment would be about #{result.round(2)}"

  puts MESSAGES['another_loan']
  puts MESSAGES['start_over']
  input = gets.chomp
  break unless input.downcase == "yes" 

end

puts MESSAGES['thank_you']