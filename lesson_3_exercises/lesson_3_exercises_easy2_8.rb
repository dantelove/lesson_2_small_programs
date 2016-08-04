# lesson_3_exercises_easy2_8.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#LS solution

flintstones.index {|name| name[0,2] == "Be"}