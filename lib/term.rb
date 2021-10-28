
class Term

  attr_reader :name, :courses
  def initialize(term_name)
    @name = term_name
    @courses = []
  end

  def add_course(new_course)
    @courses << new_course
  end
end
