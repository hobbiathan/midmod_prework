class Term

  attr_reader :name, :courses
  def initialize(term_name)
    @name = term_name
    @courses = []
  end

end
