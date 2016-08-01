class DutchFlag
  def initialize(array)
    @array = array
  end

  def sort
    @front = 0
    # ones = 0
    @back = @array.length - 1

    @array.length.times do
      move_up_front if @array[@front] == 0
      front_to_back if @array[@front] == 2

      if @array[@front] == 1
        swap!(@front, @back)
      end
    end

    @array
  end

  private

  def move_up_front
    @front += 1
  end

  def front_to_back
    swap!(@front, @back) unless @front >= @back
    @back -= 1
  end

  def swap!(a, b)
    puts "#{a} to #{b}"
    t = @array[a]
    @array[a] = @array[b]
    @array[b] = t
  end
end
