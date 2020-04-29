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

  # it 'returns the number of bikes in dock' do
  #   subject.dock(1)
  #   subject.dock(2)
  #   expect(subject.dock(1)).to eq(4)
  # end
end
