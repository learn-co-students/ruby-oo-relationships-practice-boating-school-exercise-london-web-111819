class Student
    attr_reader :first_name

    @@all = []
    
    def initialize(first_name)
        @first_name = first_name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    # Find specific student instance by name
    def self.find_student(target)
        Student.all.select{|student| student.first_name == target}
    end

    # Add a new boating test with Student instance
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, instructor, test_status, test_name)
    end

    # Return a pass percentage of tests for student instance
    def grade_percentage
        total_tests = BoatingTest.all.select{|bt| bt.student == self}
        passed_tests = total_tests.select{|bt| bt.test_status == 'passed'}
        passed_tests.length.to_f / BoatingTest.all.select{|bt| bt.student == self}.length
    end
end
