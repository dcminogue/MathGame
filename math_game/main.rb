require_relative 'player'
require_relative 'question'
require_relative 'turn'
require_relative 'math_game'

puts "Enter name for Player 1:"
player1_name = gets.chomp
puts "Enter name for Player 2:"
player2_name = gets.chomp

game = MathGame.new(player1_name, player2_name)
game.run_game
