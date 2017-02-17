# class PermissionDenied < StandardError;end

begin
  raise StandardError#, "This is an error test"
rescue StandardError => e
  e.message
  puts "Rescued"
end

puts "Let's keep roling..."
