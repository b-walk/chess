#frozen_string_literal: true

# Requires all piece dependencies
require_relative 'piece'
Dir["./pieces/*"].each { |file| require file }

module Chess
  # Board objects allow legal manipulation of piece data by human players
  class Board
    attr_reader :squares

    def initialize
      @squares = Array.new(64)
      set_pieces
    end

    private

    def set_pieces
      # Iterate through @squares, assigning their values to new pieces as appropriate
    end
  end
end
