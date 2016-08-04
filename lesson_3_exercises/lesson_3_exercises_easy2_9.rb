# lesson_3_exercises_easy2_9.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#LS Solution

flintstones.map! do |name|
  name[0,3]
 end