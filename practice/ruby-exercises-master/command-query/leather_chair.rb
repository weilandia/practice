
class LeatherChair

  def initialize
    @faded = false
  end

  def faded?
    if @faded == false
      puts "New chairs are NOT faded."
    elsif @faded == true
      puts "Exposed chairs are faded."
    end
    @faded
  end

  def expose_to_sunlight
    @faded = true
  end
end
