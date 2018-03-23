require 'je_robot2/version'

module JeRobot2
  class Robot

    attr_reader :x
    attr_reader :y
    attr_reader :facing

    def initialize(x = 0, y = 0, facing='NORTH')
      @x = x
      @y = y
      @facing = facing
    end

    def move
      send("move_#{@facing.downcase}")
    end

    def move_east
      @x += 1
    end

    def move_west
      @x -= 1
    end

    def move_north
      @y += 1
    end

    def move_south
      @y -= 1
    end

  end
end
