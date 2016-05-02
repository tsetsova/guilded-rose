class Item

  MAXIMUM_QUALITY = 50

  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def update_item_status
    reduce_sell_in_time && decrease_quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

  def reduce_sell_in_time
    @sell_in -= 1
  end

  def decrease_quality
    @sell_in > 0 ? @quality -= 1 : @quality -= 2
  end

  def increase_quality
    @quality += 1 if @quality < MAXIMUM_QUALITY
  end
end



