require 'je_robot2/version'

module JeRobot2
  class Robot

    attr_reader :x
    attr_reader :y
    attr_reader :facing

    FACING = ['NORTH', 'EAST', 'SOUTH', 'WEST']

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

    def turn_left
      @facing = FACING.rotate(-1)[FACING.index(@facing)]
    end

    def turn_right
      @facing = FACING.rotate(1)[FACING.index(@facing)]
    end

    def report
      {
        x: @x,
        y: @y,
        facing: @facing
      }
    end

  end
end
