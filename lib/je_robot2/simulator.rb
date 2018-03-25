require 'je_robot2/version'

module JeRobot2
  class Simulator

    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def place(x, y, facing)
      return unless @table.valid_placement?(x, y)

      @robot = Robot.new(x, y, facing)
    end

  end
end
