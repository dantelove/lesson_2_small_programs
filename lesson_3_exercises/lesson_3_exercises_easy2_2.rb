# lesson_3_exercises_easy2_2.rb

ages = {"Herman" => 32, "lily" => 30, "Grandpa" => 5843, "Eddie" => 10, 
        "Marilyn" => 22, "Spot" => 237}

total_ages = 0

ages.each do |k,v|
  total_ages += v
end

total_ages


# -LS solution

ages.values.inject(:+)
