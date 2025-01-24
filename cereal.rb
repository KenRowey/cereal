class Cereal
  attr_accessor :name, :ounces, :calories

  def initialize(name, ounces, calories)
    @name = name
    @ounces = ounces
    @calories = calories
  end

  def to_s
    "#{@name} #{@ounces} #{@calories}"
  end

  def new
  end

  def open
  end

end
