require 'spec_helper'

describe JeRobot2::Table do
  subject { JeRobot2::Table.new(5, 5) }

  context 'valid_placement?' do
    it { should be_valid_placement(0, 0) }
    it { should be_valid_placement(4, 4) }
    it { should_not be_valid_placement(5, 5) }
    it { should_not be_valid_placement(-1, -1) }
  end

end
