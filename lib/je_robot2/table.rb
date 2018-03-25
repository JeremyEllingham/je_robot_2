require 'je_robot2/version'

module JeRobot2
  class Table

    def initialize(height, width)
      @height = height
      @width = width
    end

    # Return valid placement if both x and y within table dimensions
    # y needs 1 subtracted as table indexing starts at 0
    def valid_placement?(x, y)
      if (0..@height).include?(x) && (0..(@width-1)).include?(y)
        return true
      else
        return false
      end
    end

  end
end
