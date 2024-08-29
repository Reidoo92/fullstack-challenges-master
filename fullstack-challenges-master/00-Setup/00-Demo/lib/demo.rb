def circle_area(radius)
  # TODO: Implement the `circle_area` method
  circle_area = 3.14*radius*radius

  if (radius < 0)
    circle_area = 0
  end

  return circle_area
end
