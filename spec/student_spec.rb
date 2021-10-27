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



end
