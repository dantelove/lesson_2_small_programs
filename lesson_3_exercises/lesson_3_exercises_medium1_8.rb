# lesson_3_exercises_medium1_8.rb

statement = "I want to titleize this."

def titleize(string)
  split_string = string.split
  split_string.each { |word| word.capitalize! }
  titleized_string = split_string.join(" ")
end

titleize(statement)

#LS Solution

words.split.map {|word| word.capitalize }.join('')