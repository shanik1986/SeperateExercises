LETTER_BLOCKS = [
                ['B', 'O'], ['G','T'], ['V','I'], ['X','K'], ['R','E'],
                ['L', 'Y'], ['D', 'Q'], ['F', 'S'], ['Z', 'M'], ['C', 'P'],
                ['J', 'W'], ['N', 'A'], ['H', 'U']
]

def block_word?(word)
  temp_block = Array.new(LETTER_BLOCKS)
  block_word = true

  word.each_char do |char|
    index = find_block(temp_block, char)
    if index.nil?
      block_word = false
      break
    else
      temp_block.delete_at(index)
    end
  end
  block_word
end

def find_block(blocks, char)
  blocks.each_with_index do |block, index|
    return index if block.include?(char.upcase)
  end
  nil
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
