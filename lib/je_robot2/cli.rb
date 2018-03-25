require 'je_robot2/version'

module JeRobot2
  class CLI
    # Read commands in from file and pass through to Command
    def load_commands(file)
      File.readlines(file).map do |command|
        JeRobot2::Command.process(command)
      end
    end
  end
end
