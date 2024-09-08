def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]
  formatted_attributes = " #{attributes[0]}=\"#{attributes[1]}\"" if attributes

  "<#{tag_name}#{formatted_attributes}>#{yield}</#{tag_name}>"
end
