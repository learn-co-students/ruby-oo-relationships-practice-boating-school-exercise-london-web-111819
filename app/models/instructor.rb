class Instructor
    attr_reader :name

    @@all = []
   
    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    # Pass a certain student instances' test
    def pass_student(student, test_name)
        BoatingTest.all.select{|bt| bt.instructor == self }.select{|bt| bt.student == student && bt.test_name == test_name}.each{|bt| bt.test_status = 'passed'}
    end

    # Fail a certain student instances' test
    def fail_student(student, test_name)
        BoatingTest.all.select{|bt| bt.instructor == self }.select{|bt| bt.student == student && bt.test_name == test_name}.each{|bt| bt.test_status = 'failed'}
    end
end
