class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)

  attr_reader :age, :height, :fruits, :dead

  def initialize
    @age = 0
    @dead = false
    @height = 0
    @fruits = 0
  end

  def one_year_passes!
    @fruits = 0

    @age += 1 unless dead?
    @height += 1 if @age < 11

    if @age < 15 && @age > 5
      @age < 10 ? @fruits = 100 : @fruits = 200
    end

    probability_of_death
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive?
  end

  def dead?
    @dead
  end

  private

  def probability_of_death
    if @age > 50
      death_chance = (@age - 50) * 0.02
      @dead = true if rand < death_chance
    elsif @age > 100
      @dead = true
    end
  end
end
