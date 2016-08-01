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
    front = 0
    middle = 0
    back = @array.length - 1

    @array.length.times do
      if @array[middle] == 0
        @array.swap!(middle, front)
        front += 1
        middle += 1
      elsif @array[front] == 2
        @array.swap!(front, back)
        back -= 1
      elsif @array[middle] == 2
        @array.swap!(middle, back)
        back -= 1
      elsif @array[back] == 2
        back -= 1
      elsif @array[middle] == 1
        middle += 1
      end
    end

    @array
  end
end
