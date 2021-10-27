require './lib/student'

RSpec.describe 'Student' do
  it 'is an instance of student' do
    student = Student.new({name: "Morgan", age: 21})
    expect(student).to be_instance_of(Student)
  end

  it 'can store and read a given hash' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.inputted_hash).to eq({name: "Morgan", age: 21})
  end

  it 'can read a given hash :name keys value' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.name).to eq("Morgan")
  end

  it 'can read a given hash :age key value' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.age).to eq(21)
  end

  it 'can read the empty scores array on initialization' do
    student = Student.new({name: "Morgan", age: 21})

    expect(student.scores).to eq([])
  end

  it 'can input numbers into scores array' do
    student = Student.new({name: "Morgan", age: 21})
    student.log_score(89)
    student.log_score(78)
    require 'pry'; binding.pry
    expect(student.scores).to eq([89, 78])
  end


end
