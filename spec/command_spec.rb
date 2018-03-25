require 'spec_helper'

describe JeRobot2::Command do
  subject { JeRobot2::Command.new }

  context 'PLACE' do
    it 'accepts a PLACE command' do
      command, *args = JeRobot2::Command.process("PLACE 1,2,NORTH")
      expect(command).to eq(:place)
      expect(args).to eq([1, 2, 'NORTH'])
    end
  end

    it 'returns :invalid for an invalid PLACE command' do
      command = JeRobot2::Command.process("PLACE 1")
      expect(command).to eq([:invalid, "PLACE 1"])
    end

    context 'MOVE' do
      it 'accepts a MOVE command' do
        command, *args = JeRobot2::Command.process("MOVE")
        expect(command). to eq(:move)
        expect(args).to be_empty
      end
    end

    context 'LEFT' do
      it 'accepts a LEFT command' do
        command, *args = JeRobot2::Command.process("LEFT")
        expect(command). to eq(:turn_left)
        expect(args).to be_empty
      end
    end

    context 'RIGHT' do
      it 'accepts a RIGHT command' do
        command, *args = JeRobot2::Command.process("RIGHT")
        expect(command). to eq(:turn_right)
        expect(args).to be_empty
      end
    end

    context 'REPORT' do
      it 'accepts a REPORT command' do
        command, *args = JeRobot2::Command.process("REPORT")
        expect(command). to eq(:report)
        expect(args).to be_empty
      end
    end

end
