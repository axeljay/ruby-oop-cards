require './game'
require './cards'

playing = true

game = Game.new

  puts "Greetings, please enter your name?"
  name = gets.chomp
  puts "Hey #{name}, let's get started!"

  puts "Starting score: 0"
  puts "Dealing .."


while playing

  game.play
  puts "#{name}, you have #{game.check_game.to_s} points."
  puts "Would you like to play this hand?"
  puts "Hit 'return' to play and 'no' to end the game."

  answer = gets.chomp
  if answer == "no"
    playing = false
    puts "Game ended."
    puts "Your scored #{game.check_game.to_s} points."


  # answer = gets.chomp
  # if answer == "no"
  #   puts "folding"
  #   next
  end

  if game.check_game < -2
    playing = false
    puts "GAME ENDED!"
  end

end
