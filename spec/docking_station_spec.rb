require './docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'adds one bike to bike count in docking_station' do
    expect(subject.dock(1)).to eq(1)
  end

  it 'returns the number of bikes in dock' do
    subject.dock(1)
    subject.dock(2)
    expect(subject.dock(1)).to eq(4)
  end
end
