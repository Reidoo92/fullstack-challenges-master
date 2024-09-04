require_relative "coach_answer"
# TODO: Implement the program that makes you discuss with your coach from the terminal.

your_message = ""

while your_message != "I am going to work right now!"

  your_message = gets.chomp

  coach_answer_enhanced(your_message)

end
