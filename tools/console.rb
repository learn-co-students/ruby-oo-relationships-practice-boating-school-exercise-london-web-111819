require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

basri = Student.new(firstname:"Basri")
ana = Student.new(firstname:"Ana")
amir = Student.new(firstname:"Amir")
zeynep = Student.new(firstname:"Zeynep")
lope = Student.new(firstname:"Lope")

joe = Instructor.new(name:"Joe")
ian = Instructor.new(name:"Ian")
test1 = basri.add_boating_test(testname:"Basri Test v1",teststatus:"pending",testinstructor:joe)
test2 = ana.add_boating_test(testname:"Ana Test v1",teststatus:"pending",testinstructor:joe)
test3 = amir.add_boating_test(testname:"Amir Test v1",teststatus:"pending",testinstructor:joe)
test4 = lope.add_boating_test(testname:"LopeTest v1",teststatus:"pending",testinstructor:joe)
test5 = lope.add_boating_test(testname:"LopeTest v2",teststatus:"pending",testinstructor:joe)
#pass_student(student_instance:,testname:)
t1 = joe.pass_student(student_instance:basri,testname:"Basri Test v1")
t2 = joe.pass_student(student_instance:ana,testname:"Ana Test v2 created as v2 did not exist")
t3 = joe.fail_student(student_instance:zeynep,testname:"Zeynep Test v1 created as it did not exist")
tç5 = joe.fail_student(student_instance:lope,testname:"LopeTest v2")
joe.pass_student(student_instance:basri,testname:"Basri many test1")
joe.fail_student(student_instance:basri,testname:"Basri many test2")
joe.fail_student(student_instance:basri,testname:"Basri many test3")
joe.fail_student(student_instance:basri,testname:"Basri many test4")
#self.find_student(studentname:)
find_an_existing_student1 = Student.find_student(studentname:"Basri")
find_an_existing_student2 = Student.find_student(studentname:"Amiiir")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

