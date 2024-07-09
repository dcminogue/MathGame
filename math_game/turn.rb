class Turn
    attr_reader :current_player
  
    def initialize(player1, player2)
      @players = [player1, player2]
      @current_player = @players[0]
    end
  
    def next_turn
      @current_player = @players.rotate!.first
    end
  end
  