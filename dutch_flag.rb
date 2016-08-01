class DutchFlag
  def initialize(array)
    @array = array
  end

  def sort
    @zeroes = 0
    # ones = 0
    @twos = @array.length - 1

    @array.length.times do
      swap!(0, 1) if @array[@zeroes] == 1
      zero_to_twos if @array[@zeroes] == 2
    end

    @array
  end

  private

  def zero_to_twos
    swap!(@zeroes, @twos)
    @twos -= 1
  end

  def swap!(a, b)
    t = @array[a]
    @array[a] = @array[b]
    @array[b] = t
  end
end
