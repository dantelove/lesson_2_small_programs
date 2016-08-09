# lesson_3_exercises_hard1_3.rb

# A

def mess_with_vars_a(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars_a(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

puts

# B

def mess_with_vars_b(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

mess_with_vars_b(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

puts 

# C

def mess_with_vars_c(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars_c(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"