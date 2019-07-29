require 'airport'

describe Airport do 
    describe 'initialize' do 
        subject { Airport.new }
        let (:plane) { Plane.new }
        it 'changes capacity' do 
            plane::DEFAULT_CAPACITY.times do
                subject.land_plane(plane)
            end
            expect { subject.land_plane(Plane.new) }.to raise_error "No Space In The Airport"
        end
    end
    
    it "Lands Plane" do
        plane = Plane.new
        expect (subject.land_plane(plane)).to eq [plane]
    end


    it "Plane Takeoff" do
        plane = Plane.new 
        subject.land_plane(plane)
        expect (subject.take_off).to eq [plane]
    end

    it "No take off shit weather" do 
        subject.condition(stormy)
        expect { subject.take_off }.to raise_error("No Departing")
    end

    it "No landing, shit weather" do 
        subject.condition(stormy)
        expect { subject.land(Plane.new) }.to raise_error("Landing Denied")
    end
end
    
