class Course

  attr_reader :name, :capacity, :students
  def initialize(course_name, capacity)
    @name = course_name
    @capacity = capacity
    @students = []
  end

  def full?
    if @students.size < @capacity
      false
    elsif @students.size >= @capacity
      true
    else
      puts "I don't know how, but you got a negative capacity."
    end
  end

  def enroll(student_obj)
    @students << student_obj
  end
end
