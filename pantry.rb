require_relative "flavor"

class Pantry
  def initialize
    @cereals = []
  end

  def open
    puts "Welcome to your breakfast pantry! You are one step closer to making a delicious breakfast!"

    loop do 
      if @cereals.empty? 
        puts 'Please type "add" to add your breakfast cereals to your pantry or type close to leave.'
      else
        puts 'Type "add", "retrieve", "list". or "dismiss".'
      end

      entry = gets.chomp

      case entry 
      
      when "add"
          log()
          on_shelf(@name, @ounces, @calories, @shape)
          

      when "retrieve"
          log()
          off_shelf(@name, @ounces, @calories, @shape)

      when "list"
        options()

      when "dismiss"
        puts "Your pantry will be awaiting your return."
        break

      else
        puts "Try typing your entry again."
      end
    end
  end

 

  private

  def on_shelf(name, ounces, calories, shape)
    cereal = cereal.new(name, ounces, calories, shape)
    @cereals.push(cereal)
    puts "#{cereal.to_s} is in the pantry."
  end

  def off_shelf(name, ounces, calories, shape)
    cereal = @cereals.find { |cereal| cereal.to_s }

    @cereals.delete(cereal)

    puts "#{cereal.to_s} is out of the pantry."
  end

  def log()
    puts "enter name"
    @name = gets.chomp
    puts "enter ounces"
    @ounces = gets.chomp
    puts "enter calories per serving"
    @calories = gets.chomp
    puts "enter shape"
    @shape = gets.chomp
  end

  def options()
    if @cereals.empty?
      "No cereals are in the pantry."
    else
      @cereals.each do |cereal|
        puts cereal.to_s
      end
    end
  end
end
