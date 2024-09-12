#frozen_string_literal: true

require_relative 'board'
require_relative 'player'

module Chess
  # Game objects control game flow using Board and Player data
  class Game
    def initialize
      @board = Board.new
      @players = [Player.new(:white), Player.new(:black)]
    end
  end
end
