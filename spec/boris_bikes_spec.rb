require 'boris_bikes'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}


  describe '#release_bike' do
      it 'raises an error when there are no bikes available' do
        # Let's not dock a bike first:
        # remember subject == DockingStation.new
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

# i need to change this test and i think it needs to say
# it doesnt accept a bike as it is full
# bike = Bike.new
# subject.dock_bike(bike)
# expect subject.dock_bike to raise error 'full'

    describe "#dock_bike" do
      it "raises an error when the station is full" do
        bike = Bike.new
        subject.dock_bike(bike)
        expect { subject.dock_bike Bike.new }.to raise_error 'Docking Station Full'
      end
    end

  describe "#bike" do
    it "Enables the user to see the docked bike" do
      expect(subject).to respond_to(:bike)
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end
  end
end

describe Bike do
  it {is_expected.to respond_to(:working?)}
end
