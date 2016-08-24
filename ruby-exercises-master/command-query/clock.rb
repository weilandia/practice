
class Clock
  attr_reader :time
  def initialize
    @time = 6
  end

  def wait
    @time += 1
    if @time == 13
      @time = 1
    end
    @time
  end
end
