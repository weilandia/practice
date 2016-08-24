require 'csv'
class Comment
  def initialize(comment)
    @comment = comment
  end

  def self.all
    sort_by_third_letter(CSV.read("comments.csv").flatten)
  end

  def self.sort_by_third_letter(comments)
    comments.sort_by { |comment|
      alpha.index(comment[2].to_s.downcase)
    }
  end

  def self.alpha
    [*"a".."z", ""]
  end

  def save_to_db
    CSV.open("comments.csv", "a") do |csv|
      csv << [@comment]
    end
  end
end
