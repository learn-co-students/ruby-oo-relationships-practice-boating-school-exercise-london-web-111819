# require_relative '../config/environment.rb'
require_relative '../app/models/boatingtest.rb'
require_relative '../app/models/instructor.rb'
require_relative '../app/models/student.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end


spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

test1 = BoatingTest.new(spongebob, puff, 'passed', 'TestName1')
test2 = BoatingTest.new(patrick, krabs, 'passed', 'TestName2')
test1 = BoatingTest.new(spongebob, puff, 'pending', 'TestName3')


# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)


binding.pry
'Done'

