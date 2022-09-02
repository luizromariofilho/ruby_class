class Place
  attr_accessor :rooms, :localization, :price, :kind 

  def initialize(rooms, localization, price, kind)
    @rooms = rooms
    @localization = localization
    @price = price
    @kind = kind
  end

  def calculate_rent
    if @kind == :apartment
      @rooms * 0.002 * @price
    elsif @kind == :house
      @rooms * 0.001 * @price
    else
      'Not implemented'
    end
  end
end

apartment = Place.new(3,'123 Sample St, CA', 100_000, :apartment)
puts apartment.calculate_rent

house = Place.new(7,'456 Sample St, CA', 1_000_000, :house)
puts house.calculate_rent

anything = Place.new(3,'123 Sample St, CA', 100_000, :anything)
puts anything.calculate_rent