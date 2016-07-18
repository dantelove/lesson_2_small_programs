#lesson_2_small_programs2_3.rb

#psuedo-code - a method that takes an array of integers
#and returns a new array with every other element

#Given an array of integers
#Create a Method w/ Array as parameter
#Return new array with every other integer

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def every_other(arr, index_start)
  new_array = Array.new

  case index_start
  when 0
    arr.each_with_index {|x, i| new_array << x if i.even?}
  when 1
    arr.each_with_index {|x, i| new_array << x if i.odd?}
  else
    puts "Invalid index start value. Please pass 0 or 1."
  end

  p new_array

end

every_other(array, 0)

every_other(array, 1)