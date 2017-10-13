class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select(&:odd?)
  end

  def multiple_to_three
    @array - @array.reject { |x| (x % 3).zero? }
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.map { |elem| elem / 10.0 }
  end

  def chars
    @array.select { |x| x.between?(1, 26) }.map do |k|
    ( 'a'..'z' ).to_a[ k - 1 ].to_sym 
  end

  def switch
    min1 = @array.min
    max1 = @array.max
    indxmin = @array.rindex(min1)
    indxmax = @array.rindex(max1)
    @array.fill(min1, indxmax...indxmax + 1).fill(max1, indxmin...indxmin + 1)
    
  end

  def before_min
    minim = @array.min
    rindex = @array.rindex(minim)
    @array.slice(0...rindex)
  end

  def three_smallest
    @array.sort.slice(0..2)
  end
end