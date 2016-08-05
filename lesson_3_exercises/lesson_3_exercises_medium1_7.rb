# lesson_3_exercises_medium1_8.rb



def fib(first_num, second_num)
  limit = 15
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1)
puts "result is #{result}."

#original limit call was two levels away from outer scope varaible