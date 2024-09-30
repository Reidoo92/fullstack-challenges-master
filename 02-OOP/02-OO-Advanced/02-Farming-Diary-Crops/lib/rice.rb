# TODO: code the Rice class
require_relative "crop"
class Rice < Crop
  def water!
    super
    @grains -= 5
  end

  def transplant!
    @grains += 10
  end
end
