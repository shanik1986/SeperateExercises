def greetings(name_arr, title_hash)
  name = name_arr.join(' ')
  title = title_hash.values.join(' ')
  puts "Hello, #{name}!, Nice to have a #{title} around."
end

greetings(['John', 'Q', 'Doe'], { :title => 'Master', :occupation => 'Plumber'})
