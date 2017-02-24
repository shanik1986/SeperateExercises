def picking(arr)
  yield(arr)
end

arr = %w(raven finch hawk eagle condor)

picking(arr) { |_, _, *birds_of_pray| puts birds_of_pray }
