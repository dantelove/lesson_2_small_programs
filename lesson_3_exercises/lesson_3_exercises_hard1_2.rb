# lesson_3_exercises_hard1_2.rb

greetings = {a: 'hi'}
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting # => "hi there"
puts greetings # {:a=>"hi there"}