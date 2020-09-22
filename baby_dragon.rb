class BabyDragon
  attr_reader :name, :asleep

  def initialize(name)
    @name = name
    @food_in_belly = 0
    @asleep = false
    puts "#{@name} has born"
  end

  def feed(toons_of_food)
    puts "#{name} consumes #{toons_of_food} tons of food."
  end
    @food_in_belly += tons_of_food
    time_passes
  end

  def play
    puts "You play fetch with #{name}"
    puts "#{name} brings back a Mack Truck"

    time_passes
  end

  def burninate(who)
    puts "#{name} incinerates #{who}"
    @food_in_belly -= 1
    time_passes
  end

  private
  def time_passes()
    puts "Some time goes by..."
    puts "#{name} has #{food_in_belly} food in belly"
    if @food_in_belly > 0
      @food_in_belly -= 1
    end
    if @food_in_belly == 0
      puts "oh no, #{name} is hangry"
      puts "They ATE YOU"
      exit
    end
  end

  public
  def sleep
    @asleep = true
    puts "#{name} goes zzzzzzz...."
    3.times do
      time_passes
    end
    puts "#{name} wakes up!"
    @asleep = false
  end

end