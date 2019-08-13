require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

kim = Student.new("Kim")
brandon = Student.new("Brandon")

joel = Instructor.new("Joel")
kenny = Instructor.new("Kenny")

bt1 = BoatingTest.new("Test Name 1", "Passed", kim, kenny)
bt2 = BoatingTest.new("2 Fast 2 Furious", "Passed", brandon, joel)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
