
class Children
  def initialize
    @children = []
  end

  def eldest
    if @children.empty?
      nil
    else
      @children[-1][0]
    end
  end

  def <<(children)
    @children << [children, children.age]
    @children = @children.sort_by { |a| a[1] }
  end
end

class Child
attr_reader :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end
