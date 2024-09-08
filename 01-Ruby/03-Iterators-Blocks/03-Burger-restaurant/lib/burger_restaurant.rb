def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  main = (block_given? ? yield(patty) : patty)
  ["bread", main, sauce, topping, "bread"]
end
