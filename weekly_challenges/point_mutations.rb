require 'pry'
# class DNA
#   attr_reader :strand
#
#   def initialize(strand)
#     @strand = strand
#   end
#
#   def hamming_distance(other_strand)
#     short, long = determine_sizes(other_strand)
#     return 0 if short == long[0..(short.size - 1)]
#
#     idx = 0
#     counter = 0
#
#     while idx < short.size
#       counter += 1 unless short[idx] == long[idx]
#       idx += 1
#     end
#
#     counter
#   end
#
#   private
#
#   def determine_sizes(other_strand)
#     if strand.size <= other_strand.size
#       return strand, other_strand
#     else
#       return other_strand, strand
#     end
#   end
# end



class DNA
  attr_reader :strand

  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other)
    length = [strand.size, other.size].min
    (0..(length - 1)).reduce(0) do |distance, idx|
      strand[idx] == other[idx] ? distance : distance + 1
    end
  end
end

dna = DNA.new('ABC')

p dna.hamming_distance('ABCD') == 0
