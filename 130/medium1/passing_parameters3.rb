items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end
#
# gather(items) do |*good_vegies, bad_veggie|
#   puts good_vegies.join(', ')
#   puts bad_veggie
# end
#
# gather(items) do |tastey_veggie, *weird_veggies, ok_veggie|
#   puts tastey_veggie
#   puts weird_veggies.join(', ')
#   puts ok_veggie
# end
#
# gather(items) do |tasety_veggie, *rest_of_them|
#   puts tasety_veggie
#   puts rest_of_them.join(', ')
# end
gather(items) do |veg1, veg2, veg3, veg4|
  puts "#{veg1}, #{veg2}, #{veg3} and #{veg4}"
end
