class Student


  attr_reader :inputted_hash, :name, :age, :scores
  def initialize(inputted_hash)
    @inputted_hash = inputted_hash
    @name = @inputted_hash[:name]
    @age = @inputted_hash[:age]
    @scores = []
  end

  def log_score(int_input)
    # Make sure no funny business occurs
    if int_input.is_a?(Float) or int_input.is_a?(Integer)
      @scores << int_input
    else
      puts "Invalid input: Non-integer/Non-float"
    end
  end

  def grade
    average_grade = nil # Could've also been initialized as 0s
    total_grade_value = 0
    @scores.each do |scores|
      total_grade_value += scores # Total all values in scores
    end
    # Divide total value by total amount of elements in scores (as floats)
    average_grade = total_grade_value.to_f / @scores.size.to_f
  end



end
