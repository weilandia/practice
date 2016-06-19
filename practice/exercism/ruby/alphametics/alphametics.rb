class Alphametics
  def solve(equation)
    parse(equation)
    @equation = equation
    @chars = build_set(equation.dup)

    brute_force_solution
  end

  def brute_force_solution
    [*'1'..'9'].combination(@chars.length).each { |number_arr|
      translation = build_hash(number_arr)

      new_equation = @equation.chars.map do |char|
        translation[char] ? translation[char] : char
      end.join

      return translation if true_equation?(new_equation)
    }
  end

  def true_equation?(string_equation)
    equation = string_equation.split(' ').map.with_index { |char, i|
      i.even? ? char.to_i : char
    }

    require "pry"; binding.pry
  end

  def parse(equation)
    equation.gsub!('^', '**')
  end

  def build_set(equation)
    equation.gsub!(/[^A-Z]/, '')
    Set.new(equation.split(''))
  end

  def build_hash(number_arr)
    Hash[@chars.zip(number_arr)]
  end
end
