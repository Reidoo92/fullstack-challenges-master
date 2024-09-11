require 'csv'

def most_successful(number, max_year, file_path)
  # TODO: return an array of most successful movies before `max_year`
  movies = []
  CSV.foreach(file_path) do |row|
    row = { earnings: row[2].to_i, name: row[0], year: row[1].to_i }
    movies << row if row[:year] < max_year
  end

  return movies.sort_by { |movie| -movie[:earnings] }.first(number)
end
