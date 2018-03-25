require 'je_robot2/version'

module JeRobot2
  class Command

    def self.process(command)
      if match = /\APLACE (?<x>\d+),(?<y>\d+),(?<facing>\w+)\Z/.match(command)
        [:place, match[:x].to_i, match[:y].to_i, match[:facing]]
      else
        [:invalid, command]
      end
    end

  end
end
