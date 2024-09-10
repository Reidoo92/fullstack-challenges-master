DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Veggie Burger" => 540,
  "Vegan Burger" => 350,
  "Sweet Potatoes" => 230,
  "Salad" => 15,
  "Iced Tea" => 70,
  "Lemonade" => 90
}

MENUS_CALORIES = {
  "Cheesy Combo" => DISHES_CALORIES["Cheese Burger"] + DISHES_CALORIES["Sweet Potatoes"] + DISHES_CALORIES["Lemonade"],
  "Veggie Combo" => DISHES_CALORIES["Veggie Burger"] + DISHES_CALORIES["Sweet Potatoes"] + DISHES_CALORIES["Iced Tea"],
  "Vegan Combo" => DISHES_CALORIES["Vegan Burger"] + DISHES_CALORIES["Salad"] + DISHES_CALORIES["Lemonade"]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  cal = 0

  MENUS_CALORIES.each do |menu, cal_menu|
    orders.each { |order_element| cal += cal_menu if order_element == menu }
  end

  DISHES_CALORIES.each do |dishe, cal_dish|
    orders.each { |order_element| cal += cal_dish if order_element == dishe }
  end

  return cal
end
