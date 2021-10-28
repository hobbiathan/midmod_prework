
class Term

  attr_reader :name, :courses
  def initialize(term_name)
    @name = term_name
    @courses = []
  end


  def add_course(new_course) # Push a given course into our course array
    @courses << new_course
  end


  def list_courses
 # Shove all courses that are not at capacity into open_courses[]
    open_courses = []
    @courses.each do |course|
      if course.full? == false
        open_courses << course
      end
    end
    # Return all open courses
    open_courses
  end


  def students

    all_students = []

    @courses.each do |course|

      all_students << course.call_students

    end


    all_students.flatten
  end

end
