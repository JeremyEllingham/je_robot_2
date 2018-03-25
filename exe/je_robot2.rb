#!/usr/bin/env ruby
require 'je_robot2'

cli = JeRobot2::CLI.new
commands = cli.load_commands(ARGV[0])
cli.run(commands)
