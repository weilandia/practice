
class Clearance
  attr_reader :best_deal, :clearance_items
  def initialize
    @clearance_items = []
    @best_deal = nil
  end

  def <<(item)
    @clearance_items << [item.item, item.hash.values[0], item.hash.values[1], (((item.hash.values[1].to_f) / (item.hash.values[0].to_f)) * 100).to_i]
    @clearance_items = @clearance_items.sort_by { |a| a[3] }
    if @clearance_items.empty?
      @best_deal = nil
    else
      @best_deal = @clearance_items.last[0]
    end
  end
end

class Item
  attr_reader :hash, :item
  def initialize(item, hash)
    @item = item
    @hash = hash
  end
end
