require_relative 'player'
require_relative 'question'
require_relative 'turn'

class MathGame
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @turn = Turn.new(@player1, @player2)
  end

  def run_game
    while @player1.alive? && @player2.alive?
      current_player = @turn.current_player
      question = Question.new

      puts "#{current_player.name}: #{question.ask_question}"
      answer = gets.chomp

      if question.check_answer(answer)
        puts "#{current_player.name}: YES! You are correct."
        current_player.update_score
      else
        puts "#{current_player.name}: Seriously? No!"
        current_player.decrement_life
      end

      display_scores
      @turn.next_turn
    end

    display_winner
    puts "Good bye!"
  end

  private

  def display_scores
    puts "P1 has #{@player1.lives}/3 lives left and P2 has #{@player2.lives}/3 lives left"
  end

  def display_winner
    if @player1.alive?
      puts "#{@player1.name} wins with a score of #{@player1.score} points."
    else
      puts "#{@player2.name} wins with a score of #{@player2.score} points."
    end
    puts "-----Game over-----"
  end
end
