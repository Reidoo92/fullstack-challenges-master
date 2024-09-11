def french_phone_number?(phone_number)
  # TODO: true or false?
  phone_number.match?(/^(?:(?:\+|00)33[\s.-]{0,3}(?:\(0\)[\s.-]{0,3})?|0)[\s.-]?[1-9](?:(?:[\s.-]?\d{1}){8}|\d{2}
  (?:[\s.-]?\d{3}){2})$/)
end
