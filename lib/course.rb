class Course

  attr_reader :name, :capacity, :students
  def initialize(course_name, capacity)
    @name = course_name
    @capacity = capacity
    @students = []
  end

end
