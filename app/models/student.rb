class Student

    attr_accessor :firstname

    @@all = []

    def initialize(firstname:)
        @firstname = firstname
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(testname:,teststatus:,testinstructor:)
        BoatingTest.new(testname:testname,teststatus:teststatus,teststudent:self,testinstructor:testinstructor)
    end

    def self.find_student(studentname:)
        Student.all.find{|student_object|student_object.firstname == studentname}
    end

    def grade_percentage
        passed = BoatingTest.all.select{|boatingtest| (boatingtest.teststudent == self) && (boatingtest.teststatus == "passed")}.count
        all = BoatingTest.all.select{|boatingtest| (boatingtest.teststudent == self) }.count
        (100*(passed.to_f/all.to_f))
    end
end
