class BoatingTest
    attr_reader :student, :instructor, :test_name
    attr_accessor :test_status

    @@all = []
   
    def initialize(student, instructor, test_status, test_name)
        @student = student
        @instructor = instructor
        @test_status = test_status
        @test_name = test_name
        @@all.push(self)
    end

    def self.all
        @@all
    end
end
