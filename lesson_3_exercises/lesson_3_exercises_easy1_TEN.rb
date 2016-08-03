# lesson_3_exercises_easy1_TEN.rb

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

x = Hash[(0...flintstones.size).zip flintstones]

p x

flintstones_hash = {}
flintstones.each_with_index do |name, idx|
  flintstones_hash[name] = each_with_index
end