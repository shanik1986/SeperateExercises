enum = Enumerator.new do |yielder|
         yielder << a = 1

         loop do
           temp_arr = (1..a).to_a
           yielder << temp_arr.inject(:*)

           a += 1
         end
       end

# 7.times { puts enum.next }

enum.each_with_index do |num, idx|
  break if idx > 6
  puts num
end
