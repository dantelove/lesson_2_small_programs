# lesson_3_exercises_medium1_2.rb

statement = "The Flintstones Rock"

statement_array = statement.chars.to_a

result = Hash.new(0)
statement_array.each { |letter| result[letter] +=1 }
p result