STOP_MESSAGE = "I am going to work right now!"

def coach_answer(your_message)
  # TODO: return coach answer to your_message

  if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase
    ""
  elsif your_message.include?("?")
    "Silly question, get dressed and go to work!"
  else
    "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!

  answer = coach_answer(your_message)
  if answer == ""
    return ""
  elsif your_message.upcase == your_message
    return "I can feel your motivation! #{answer}"
  else
    return answer
  end
end
