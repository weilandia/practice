class Appointments
  attr_reader :earliest

  def initialize
    @slots = []
    @earliest = @slots[0]
  end

  def at(time)
    @slots << time
    @slots = @slots.sort
    @earliest = @slots[0]
  end
end
