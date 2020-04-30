require './docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.bike_released
    expect(bike).to be_working
  end

  it 'does not release a bike if there is less than 1 in the docking station' do
    expect(subject.release_bike).to eq("There are no bikes here.")
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'adds one bike to bike count in docking_station' do
    expect(subject.dock(1)).to eq("There are 1 bike(s) in the docking station")
  end

  describe '#dock' do
    it 'does not dock a bike if there is 1 bike in the docking station' do
      subject.dock(1)
      expect{ subject.dock(1) }.to raise_error "There are 1 already docked"
    end
  end
end
