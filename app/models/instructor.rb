class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name:)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student_instance:,testname:)
        pass_or_fail_student(test_result_to_assign:"passed",student_instance:student_instance,testname:testname)
    end

    def fail_student(student_instance:,testname:)
        pass_or_fail_student(test_result_to_assign:"failed",student_instance:student_instance,testname:testname)
    end

    #TODO: Must find the way to define the method below as private so that it could not be triggered externally.
    def pass_or_fail_student(test_result_to_assign:,student_instance:,testname:)
        instance_to_update = BoatingTest.all.find{|boating_test|(boating_test.teststudent == student_instance) && (boating_test.testname == testname)}
        if instance_to_update != nil
            #UPDATE
            instance_to_update.teststatus = test_result_to_assign
        else
            #CREATE NEW
            instance_to_update = BoatingTest.new(testname:testname,teststatus:test_result_to_assign,teststudent:student_instance,testinstructor:self)
        end
        instance_to_update
    end

end
