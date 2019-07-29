require_relative "plane"

class Airport
    attr_reader :planes, :plane
    def initialize (capacity = DEFAULT_CAPACITY)
        @planes = []
        @weather = []
        @capacity = capacity
    end

    def land(plane)
        fail "Landing Denied" unless safe?
        fail "No Space In The Airport" if full?
        @planes << plane
    end

    def take_off(plane)
        fail "No Departing" unless safe?
        @plane.pop

    def weather
        @weather = ["Sunny", "Stormy"]
        @weather.sample
    end

private
    def safe?
        if @weather == "Stormy"
            true
        elsif
            @weather == "Sunny"
            false
        end
    end

    def full?
        if @planes.count < DEFAULT_CAPACITY
            false 
        else 
            true
        end
    end
end
end
