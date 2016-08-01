class Array
  def swap!(a, b)
    self[a], self[b] = self[b], self[a]
    self
  end
end

class DutchFlag
  def initialize(array)
    @array = array
  end

  def sort
    @front = 0
    @current = 0
    @back = @array.length - 1

    @array.length.times do
      move_current
    end

    @array
  end

  private

  def move_current
    return to_front if low?
    return to_back if high?
    @current += 1
  end

  def to_front
    @array.swap!(@current, @front)
    @front += 1
    @current += 1
  end

  def to_back
    @array.swap!(@current, @back)
    @back -= 1
  end

  def low?
    @array[@current] == 0
  end

  def high?
    @array[@current] == 2
  end
end
