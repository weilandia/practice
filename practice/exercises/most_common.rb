class MostCommon
  attr_reader :most_common_words

  def initialize(message = File.read('message.txt'))
    @message = message.downcase
  end
  def most_common(message = @message)
    parsed_hash = parse(message)
    @most_common_words = format(parsed_hash)
    @most_common_words
  end

  def parse(message = @message)
    parsed_hash = {}
    message = message.split(" ").map do |word|
      word = word.chomp("\"")
      word = word.chomp("?")
      word = word.chomp(":")
      word = word.chomp(".")
      word = word.chomp(",")
      word = word.chomp("!")
      if parsed_hash.has_key?(word)
        parsed_hash[word] += 1
      else
        parsed_hash[word] = 1
      end
    end
    parsed_hash = parsed_hash.sort_by {|_key, value| value}.reverse.to_h
  end

  def format(words)
    array = words.keys
    freq = array.map do |i|
        i + ": " + "#{words[i]}"
    end
    puts freq
  end
end
