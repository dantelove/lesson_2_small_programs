# lesson_3_exercises_medium1_5.rb

def factors(number)
  dividend = number
  divisors = []
  case 
  when number > 0
    until dividend == 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
    end
  when number <= 0
    puts "Please enter a number greater than zero."
  end
  divisors
end

factors(10)
factors(29)
factors(-1)
factors(0)

#Bonus 1
#The purpose of the 'number % dividend == 0' makes the program stop
#when the number reaches itself. ie. 29/29 == 1, making 29 % 29 == 0

#Bonus 2
#Putting the 'divisors' before the methods end, insures that it 
#supplies the return value.