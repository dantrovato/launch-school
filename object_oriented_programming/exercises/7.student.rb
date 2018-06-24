class Student
  attr_accessor :name

  protected
  attr_reader :grade

  public
  def initialize(name, grade)
    @grade = grade
    @name = name
  end

  def better_grade_than(other_student)
    self.grade > other_student.grade
  end
end

joe = Student.new('Joe', 8)
bob = Student.new('Bob', 7)
puts "Well done!" if joe.better_grade_than(bob)
