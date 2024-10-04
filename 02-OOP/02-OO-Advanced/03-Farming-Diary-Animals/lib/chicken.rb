require_relative "animal"

class Chicken < Animal
  attr_reader :eggs

  def initialize(gender)
    super()
    @gender = gender
    @eggs = 0
  end

  def talk
    @gender == "male" ? "cock-a-doodle-doo" : "cluck cluck"
  end

  def feed!
    super()
    @eggs += 2 if @gender == "female"
  end
end
