desc 'This is a test'
task :testing do
  puts "This is me testing this thing"
end

desc 'This is the default task'
task :default => [:testing] do
  puts "That's supposed to pe printed after the :testing text"
end
