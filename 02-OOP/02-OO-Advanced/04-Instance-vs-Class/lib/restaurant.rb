class Restaurant
  # TODO: add relevant accessors if necessary
  attr_reader :average_rating, :city, :name

  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables

    @city = city
    @name = name
    @average_rating = 0
    @ratings = []
  end

  # TODO: implement .filter_by_city and #rate methods
  def rate(new_rate)
    @ratings << new_rate
    totale = @ratings.sum
    @average_rating = totale / @ratings.length
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city == city }
  end
end
