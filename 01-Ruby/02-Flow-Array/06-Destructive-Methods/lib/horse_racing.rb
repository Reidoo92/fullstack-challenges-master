def horse_racing_format!(race_array)
  # TODO: modify the given array so that it is horse racing consistent. This method should return nil.
  number_of_horses = race_array.length

  race_array.reverse!

  race_array.map! do |horse|
    "#{number_of_horses - race_array.index(horse)}-#{horse}!"
  end
end
