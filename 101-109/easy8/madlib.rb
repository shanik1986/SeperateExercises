PROMPTS = %w(noun verb adjective adverb)

def get_prompts(answers)
  answers = {}
  PROMPTS.each do |prompt|
    print "Enter a #{prompt}: "
    answers[prompt] = gets.chomp
    puts "\n"
  end
  answers
end

 answers = get_prompts(answers)

puts "Do you #{answers['verb']} your #{answers['adjective']}" +
" #{answers['noun']} #{answers['adverb']}? That's hilarious!"
