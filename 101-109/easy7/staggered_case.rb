def staggered_case(sentence, where_to_start = :first)
  should_upcase = case where_to_start
                  when :first then true
                  when :second then false
                  else puts "ERROR!"
                  end
  result = ''
  sentence.chars.each do |char|
    result += should_upcase ? char.upcase : char.downcase
    should_upcase = !should_upcase
  end

  result
end

p staggered_case('I Love Launch School!', :second)# == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
