class BoatingTest

  attr_reader :name, :student, :instructor
  attr_accessor :status

  @@all = []

  def initialize(name, status, student, instructor)
    @name = name
    @status = status
    @student = student
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end






end
