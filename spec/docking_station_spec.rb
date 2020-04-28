require './docking_station_class.rb'
require 'rspec'

describe DockingStation do
  it { should respond_to(:release_bike) }
end
