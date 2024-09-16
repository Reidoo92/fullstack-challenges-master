require_relative "car"

p second_hand_panda = Car.new("Panda 4x4", "Renault", 30_000)
p Car.new("Testarossa", "Ferrari", 0)

p second_hand_panda.start
