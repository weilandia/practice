class Tire
  def initialize
    @flat = false
  end

  def flat?
    if @flat == false then p "This tire is brand new."
    else p "I ran over a nail."
    end
    @flat
  end

  def blow_out
    @flat = true
  end
end
