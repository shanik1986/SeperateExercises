MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def before_midnight(time)
  hours = (-(time[0,2].to_i) % HOURS_IN_DAY) * MINUTES_IN_HOUR
  minutes =  time[3,2].to_i
  hours - minutes
end

def after_midnight(time)
  hours = (time[0,2].to_i % HOURS_IN_DAY) * MINUTES_IN_HOUR
  minutes = time[3,2].to_i
  hours + minutes
end

puts before_midnight('00:00') == 0
puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0
