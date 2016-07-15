#lesson_2_small_programs2_2.rb

#psuedo code - a method that takes an array of strings
#and returns a string that is all those strings concatenated
#together

#Create a method
#Create an array of strings
#Join strings
#Return as one string

def arr_strg(arr)
  arr.join("")
end

a = ["This ", "is ", "an ", "array ", "of ", "strings", "."]

arr_strg(a)