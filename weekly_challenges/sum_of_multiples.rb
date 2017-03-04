class SumOfMultiples
  attr_reader :bases

  DEFAULT_BASE1 = 3
  DEFAULT_BASE2 = 5

  def initialize(base1 = DEFAULT_BASE1, base2 = DEFAULT_BASE2, *bases)
    @bases = bases + [base1] + [base2]
  end

  def self.to(limit)
    (get_multiples(DEFAULT_BASE1, limit) +
    get_multiples(DEFAULT_BASE2, limit)).uniq.inject(:+)
  end

  def to(limit)
    bases.map { |base| SumOfMultiples.get_multiples(base, limit) }.inject(:+)
                                                                  .uniq
                                                                  .inject(:+)
  end

  def self.get_multiples(base, limit)
    return [0] if base >= limit

    result = []
    counter = base

    while counter < limit
      result << counter
      counter += base
    end

    result
  end
end
