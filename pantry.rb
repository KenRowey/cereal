require_relative "cereal"

class Pantry
  def initialize
    @cereals = []
  end

  def run
    loop do
      puts "\n"
      puts "Your Pantry awaits."
      puts "1. Add a new cereal."
      puts "2. Show me all cereals."
      puts "3. Exit."
      print "Enter the corresponding number option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        add_cereal
      when 2
        show_cereal
      when 3
        puts "Exting pantry."
        break
      else
        puts "Invalid entry. Re-enter the corresponding number option"
      end
    end
  end

 

  private

  def add_cereal
    print "Cereal name: "
    name = gets.chomp.capitalize
    print "Number of ounces the box has: "
    ounces = gets.chomp
    print "Number of calories per serving: "
    calories = gets.chomp
    @cereals << Cereal.new(name, ounces, calories)
    puts name + " cereal has been added to the pantry!"
  end
    
  def show_cereal
    puts "These cereals are in the pantry: "
    @cereals.each do |cereal|
      puts cereal
    end
  end
end
