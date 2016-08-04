# lesson_3_exercises_easy2_3.rb

ages = {"Herman"=> 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

ages.delete_if {|k,v| v > 100 }