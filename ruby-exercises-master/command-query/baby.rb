class Baby
  def initialize
    @tired = true
  end

  def nap
    @tired = false
  end

  def tired?
    if @tired == true
      puts "The baby is tired."
    else
      puts "Naps help combat drowsiness."
    end
    @tired
  end
end
