require 'spec_helper'

describe JeRobot2::Simulator do
  let(:table) { JeRobot2::Table.new(5, 5) }
  subject { JeRobot2::Simulator.new (table) }

  it 'places the robot in a valid positon' do
    expect(JeRobot2::Robot).to receive(:new)
      .with(0, 0, "NORTH")
      .and_return(double)
    subject.place(0, 0, "NORTH")
    expect(subject.robot).not_to be_nil
  end

  it 'cannot place the robot in an invalid position' do
  expect(JeRobot2::Robot).not_to receive(:new)
    subject.place(5, 5, "NORTH")
    expect(subject.robot).to be_nil
  end
end
