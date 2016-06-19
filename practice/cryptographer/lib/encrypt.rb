

class Encryptor
  def initialize(input_string)
    @input = input_string
  end

  def encrypt
    input_array = @input.split("")
    @aplha = [a..z]
    input_array.each do |letter|
      alpha.detect do |x|
        @index_swap = @alpha.index("x")
      end
      letter = alpha[@index_swap + 13]
    end
  end

end

class Decryptor
end

class EncryptionEngine
end
