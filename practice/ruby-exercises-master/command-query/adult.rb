class Adult
  def initialize
    @sober = true
    @sober_count = 0
  end

  def consume_an_alcoholic_beverage
    @sober_count += 1
  end

  def sober?
    if @sober_count >= 3
      @sober = false
    end
    if @sober_count == 0
      puts "Adult should really be sober right now."
    elsif @sober_count == 1
      puts "Still sober."
    elsif @sober_count == 2
      puts "Not drunk yet."
    elsif @sober_count == 3
      puts "Yeah, OK. The adult is drunk."
    elsif @sober_count >= 4
      puts "The adult doesn't get more sober from drinking more."
    end
    @sober
  end
end
