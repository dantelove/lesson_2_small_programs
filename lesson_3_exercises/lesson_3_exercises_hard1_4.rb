# lesson_3_exercises_hard1_4.rb

require 'securerandom'

def uuid
  puts "#{SecureRandom.hex(8)}-#{SecureRandom.hex(4)}-#{SecureRandom.hex(4)}-#{SecureRandom.hex(4)}-#{SecureRandom.hex(12)}"
end

puts uuid
puts uuid
puts uuid