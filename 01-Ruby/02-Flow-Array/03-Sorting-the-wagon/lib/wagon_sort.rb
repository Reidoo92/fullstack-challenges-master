def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  return students.sort_by { |student| student.downcase }
end
