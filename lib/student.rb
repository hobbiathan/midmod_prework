class Student


  attr_reader :inputted_hash, :name, :age, :scores
  def initialize(inputted_hash)
    @inputted_hash = inputted_hash
    @name = @inputted_hash[:name]
    @age = @inputted_hash[:age]
    @scores = []
  end



end
