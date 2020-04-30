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
    expect(subject.dock(1)).to eq(1)
  end

  # it 'does not allow more bikes to dock if station capacity is full' do
  #   subject.dock(20)
  #   expect(subject.dock(1)).to eq("Docking station full.")
  # end

  it 'allows capacity of docking station to be full' do
    subject.dock(19)
    expect(subject.dock(1)).to eq(20)
  end

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock(1) }
      expect { subject.dock(1) }.to raise_error 'Docking station full'
    end
  end
end
