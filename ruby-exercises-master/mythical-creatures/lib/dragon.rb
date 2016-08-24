class Dragon

  attr_reader :name, :color, :rider

  def initialize(name, color, rider, hungry = true, eaten = 0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
    @eaten = eaten
  end

  def hungry?
    if @eaten <= 2
      @hungry = true
    else
      @hungry = false
    end
  end

  def eat
    @eaten += 1
  end
end
