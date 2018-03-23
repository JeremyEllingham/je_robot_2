require 'je_robot2/version'

module JeRobot2
  class Robot

    attr_reader :position

    def initialize(position = 0)
      @position = position
    end

    def move_east
      @position += 1
    end

    def move_west
      @position -= 1
    end

  end
end
