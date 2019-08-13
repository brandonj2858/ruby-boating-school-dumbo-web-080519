class Student

  attr_reader :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(name, status, self, instructor)
  end

  #helper method that returns all test
  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def instructors
    self.tests.map do |test|
      test.instructor
    end
  end


  def grade_percentage
    passed_test = tests.select do |test|
      test.status == "Passed"
    end
    passed_test.count * 100.0 / tests.count
  end

  def find_student(first_name)
    Student.all.find do |student|
      student.first_name == first_name
    end
  end




end
