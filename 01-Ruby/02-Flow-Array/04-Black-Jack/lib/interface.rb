require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

play = true

while play
  bank_score = pick_bank_score
  player_score = pick_player_card

  add_card = true

  while player_score <= 21 && add_card

    puts state_of_the_game(player_score, bank_score)
    puts "Do you want to add a card? (press 1 to add and 2 to stop)"
    add_card = gets.chomp.to_i == 1

    player_score += pick_player_card if add_card
  end

  puts end_game_message(player_score, bank_score)

  puts "Do you want to play again? (press 1 to try again, press another key to exit)"
  play = gets.chomp.to_i == 1
end

puts "Thank you bye !"
