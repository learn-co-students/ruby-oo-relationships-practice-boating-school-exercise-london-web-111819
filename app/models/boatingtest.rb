class BoatingTest

    attr_accessor :testname, :teststatus, :teststudent, :testinstructor

    @@all = []

    def initialize(testname:,teststatus:,teststudent:,testinstructor:)
        @testname = testname
        @teststatus = teststatus
        @teststudent = teststudent
        @testinstructor = testinstructor
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    
end
