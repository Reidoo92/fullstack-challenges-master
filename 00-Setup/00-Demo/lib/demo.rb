def circle_area(radius)
  # TODO: Implement the `circle_area` method
  circle_area = 3.14 * radius * radius

  circle_area = 0 if radius.negative?

  return circle_area
end
