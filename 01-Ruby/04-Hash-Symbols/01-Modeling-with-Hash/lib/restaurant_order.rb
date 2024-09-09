MENUS = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

def poor_calories_counter(burger, side, beverage)
  # TODO: return number of calories for this restaurant order
  menu = [burger, side, beverage]
  cal = 0

  MENUS.each do |element, cal_element|
    menu.each { |ingredient| cal += cal_element if element == ingredient }
  end

  return cal
end
