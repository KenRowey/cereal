class Cereal
  attr_accessor :name, :ounces, :calories, :shape

  def initialize(name, ounces, calories, shape)
    @name = name
    @ounces = ounces
    @calories = calories
    @shape = shape
  end

  def to_s
    "#{@name} #{@ounces} #{@calories} #{@shape}"
  end

  def new
  end

  def open
  end

end
