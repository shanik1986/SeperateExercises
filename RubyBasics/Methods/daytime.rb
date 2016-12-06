def time_of_day(isDay)
  isDay ? (puts "It's daytime!") : (puts "It's nighttime!")
end

daylight = [true, false].sample
puts "daylight = #{daylight}"

time_of_day(daylight)
