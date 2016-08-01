class DutchFlag
  def sort(array)
    zeroes = 0
    # ones = 0
    # twos = array.length

    array.length.times do
      swap!(array, 0, 1) if array[zeroes] == 1
    end

    array
  end

  def swap!(array, a, b)
    t = array[a]
    array[a] = array[b]
    array[b] = t
  end
end
