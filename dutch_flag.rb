class DutchFlag
  def initialize(array)
    @array = array
  end

  def sort
    @front = 0
    @middle = 0
    @back = @array.length - 1

    @array.length.times do
      if @middle > @back
        break

      elsif @array[@front] == 0
        @front += 1
        @middle += 1
      elsif @array[@front] == 2
        swap!(@front, @back)
        @back -= 1
      elsif @array[@back] == 0
        swap!(@front, @back)
        @front += 1
        @middle += 1
      elsif @array[@back] == 2
        @back -= 1
      elsif @array[@middle] == 0
        swap!(@middle, @front)
        @front += 1
        @middle += 1
      elsif @array[@middle] == 2
        swap!(@middle, @back)
        @back -= 1
      elsif @array[@middle] == 1
        @middle += 1
      end
    end

    @array
  end

  private

  def swap!(a, b)
    t = @array[a]
    @array[a] = @array[b]
    @array[b] = t
  end
end
