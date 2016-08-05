# lesson_3_exercises_medium1_9.rb

munsters = {
  "Herman" => {"age" => 32, "gender" => "male"},
  "Lily" => {"age" => 30, "gender" => "female"},
  "Grandpa" => {"age" => 402, "gender" => "male"},
  "Eddie" => {"age" => 10, "gender" => "male"},
  "Marilyn" => {"age" => 23, "gender" => "female"}
}

munsters["Herman"]["age_group"] = "adult"
munsters["Lily"]["age_group"] = "adult"
munsters["Grandpa"]["age_group"] = "senior"
munsters["Eddie"]["age_group"] = "kid"
munsters["Marilyn"]["age_group"] = "adult"

#LS Solution

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end