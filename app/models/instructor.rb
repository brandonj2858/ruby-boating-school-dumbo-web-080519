class Instructor

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #always try to build out helper methods even when not asked
  #its good to have a way to access info you usually wouldnt
  #be able to
  def tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def students
    tests.map do |test|
      test.student
    end
  end

  def pass_student(student, test_name)
    matching_test = self.tests.find do |test|
      test.name == test_name && test.student == student
    end
    if matching_test
      matching_test.status = "Passed"
    else
      BoatingTest.new(test_name, "Passed", student, self)
    end
  end

  def fail_student(student, test_name)
    matching_test = self.tests.find do |test|
      test.student == student && test.name == test_name
    end
      if matching_test
        matching_test.status = "Failed"
      else
        BoatingTest.new(test_name, "Failed", student, self)
    end
  end





end
