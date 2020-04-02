
require './question'
require './player'



puts "Welcome to the math game"
puts "Player 1 please enter your name"

player_1 = $stdin.gets.chomp

puts "Player 2 please enter your name"

player_2 = $stdin.gets.chomp

player1 = Player.new(player_1)
player2 = Player.new(player_2)

puts "Okay, now lets start the questions. Player one will go first"

active_player = player1

#loop through the turns
while player1.alive && player2.alive do

  puts "------------NEW TURN----------------"

  #create a new question, initializes
question = Question.new

puts "#{active_player.name}: #{question.prompt}"

answer = $stdin.gets.chomp

if answer.to_i === question.answer
  puts "Yes it is correct!"
else
active_player.lose_life
end

puts " #{active_player.name} lives : #{active_player.lives}"

if active_player === player1 
active_player = player2
else
  active_player = player1
end

end

if player2.lives === 0 
  puts "------------GAME OVER----------------"
  puts "Player 1 wins with a score of #{player1.lives} / 3"
elsif player1.lives === 0
  puts "------------GAME OVER----------------"
  puts "Player 2 wins with a score of #{player2.lives} / 3"
end
 

# puts player1.lives

#multiple players= use a counter that resets once hits max