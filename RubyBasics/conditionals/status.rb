status = ['awake', 'tired'].sample
puts "Status = #{status}"

action = status == 'awake' ? 'Be productive!' : 'Go to sleep!'

puts "action = #{action}"
