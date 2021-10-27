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



end
