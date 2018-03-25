require 'spec_helper'

describe JeRobot2::Command do
  subject { JeRobot2::Command.new }

  context 'PLACE' do
    it 'processes a PLACE command' do
      command, *args = JeRobot2::Command.process("PLACE 1,2,NORTH")
      expect(command).to eq(:place)
      expect(args).to eq([1, 2, 'NORTH'])
    end

    it 'returns :invalid for an invalid PLACE command' do
      command = JeRobot2::Command.process("PLACE 1")
      expect(command).to eq([:invalid, "PLACE 1"])
    end
  end

end
