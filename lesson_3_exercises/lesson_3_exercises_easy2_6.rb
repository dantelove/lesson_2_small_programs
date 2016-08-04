# lesson_3_exercises_easy2_6.rb

ages = {"Herman" => 32, "lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
        "Marilyn" => 22, "Spot" => 237}

lowest_age = 1000

ages.each do |k,v|
  lowest_age = v if v < lowest_age
end

puts lowest_age

# LS solution

ages.values.min