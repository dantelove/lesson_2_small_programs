# lesson_3_exercises_hard1_5.rb

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")

  case
  when dot_separated_words.size == 4 
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
    end
  when dot_separated_words.size != 4
    return false
  when
    return false if !is_a_number?(word)
  end

  true
end